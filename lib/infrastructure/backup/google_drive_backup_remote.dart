import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/backup/remote_backup.dart';
import 'package:passvera/domain/errors/backup_failures.dart';
import 'package:passvera/infrastructure/backup/backup_remote.dart';
import 'package:passvera/infrastructure/backup/google_config.dart';

/// Backups in the user's Drive *app data folder*: hidden from the Drive UI
/// and only reachable by this OAuth client; the `drive.appdata` scope gives
/// no access to the user's other files.
@LazySingleton(as: BackupRemote)
class GoogleDriveBackupRemote implements BackupRemote {
  static const List<String> _scopes = [drive.DriveApi.driveAppdataScope];
  static const String _folder = 'appDataFolder';
  static const String _namePrefix = 'vault-';
  static const String _extension = '.pvb';

  /// Backups are a few KB; refuse anything absurd before buffering it.
  static const int _maxDownloadBytes = 10 * 1024 * 1024;

  Future<void>? _initialization;

  Future<Either<BackupFailure, Unit>> _ensureInitialized() async {
    if (!GoogleConfig.isConfigured) {
      return const Left(BackupFailure.notConfigured());
    }
    _initialization ??= GoogleSignIn.instance.initialize(
      serverClientId: GoogleConfig.serverClientId,
    );
    await _initialization;
    return const Right(unit);
  }

  @override
  Future<Either<BackupFailure, String>> connect() async {
    try {
      final ready = await _ensureInitialized();
      if (ready.isLeft()) return ready.map((_) => '');
      final account = await GoogleSignIn.instance.authenticate(
        scopeHint: _scopes,
      );
      await account.authorizationClient.authorizeScopes(_scopes);
      return Right(account.email);
    } on GoogleSignInException catch (e) {
      return Left(_signInFailure(e));
    } catch (e) {
      return Left(_failureOf(e));
    }
  }

  @override
  Future<Either<BackupFailure, RemoteBackup>> upload(
    List<int> bytes, {
    required DateTime createdAt,
    required String account,
  }) =>
      _withDrive(account, (api) async {
        final file = drive.File()
          ..name =
              '$_namePrefix${createdAt.toUtc().millisecondsSinceEpoch}$_extension'
          ..parents = [_folder]
          ..appProperties = {'format': '1'};
        final created = await api.files.create(
          file,
          uploadMedia: drive.Media(Stream.value(bytes), bytes.length),
          $fields: 'id,createdTime,size',
        );
        return _toRemote(created);
      });

  @override
  Future<Either<BackupFailure, List<RemoteBackup>>> list({
    required String account,
  }) =>
      _withDrive(account, (api) async {
        final result = await api.files.list(
          spaces: _folder,
          q: "name contains '$_namePrefix' and trashed = false",
          orderBy: 'createdTime desc',
          pageSize: 100,
          $fields: 'files(id,createdTime,size)',
        );
        return [for (final f in result.files ?? <drive.File>[]) _toRemote(f)];
      });

  @override
  Future<Either<BackupFailure, List<int>>> download(
    String id, {
    required String account,
  }) =>
      _withDrive(account, (api) async {
        final media = await api.files.get(
          id,
          downloadOptions: drive.DownloadOptions.fullMedia,
        ) as drive.Media;
        final bytes = BytesBuilder(copy: false);
        await for (final chunk in media.stream) {
          bytes.add(chunk);
          if (bytes.length > _maxDownloadBytes) {
            throw const FormatException('Backup file too large');
          }
        }
        return bytes.takeBytes();
      });

  @override
  Future<Either<BackupFailure, Unit>> delete(
    String id, {
    required String account,
  }) =>
      _withDrive(account, (api) async {
        await api.files.delete(id);
        return unit;
      });

  @override
  Future<void> disconnect() async {
    try {
      if ((await _ensureInitialized()).isRight()) {
        await GoogleSignIn.instance.disconnect();
      }
    } catch (_) {
      // Already disconnected or offline: nothing left to revoke locally.
    }
  }

  /// Runs [operation] with a Drive client for [account], without UI.
  /// A stale token is dropped and retried once.
  Future<Either<BackupFailure, T>> _withDrive<T>(
    String account,
    Future<T> Function(drive.DriveApi api) operation,
  ) async {
    try {
      final ready = await _ensureInitialized();
      if (ready.isLeft()) {
        return const Left(BackupFailure.notConfigured());
      }
      final signedIn =
          await GoogleSignIn.instance.attemptLightweightAuthentication();
      if (signedIn == null || signedIn.email != account) {
        return const Left(BackupFailure.authorizationRequired());
      }

      for (var attempt = 0; attempt < 2; attempt++) {
        final authorization =
            await signedIn.authorizationClient.authorizationForScopes(_scopes);
        if (authorization == null) {
          return const Left(BackupFailure.authorizationRequired());
        }
        final client = authorization.authClient(scopes: _scopes);
        try {
          return Right(await operation(drive.DriveApi(client)));
        } on drive.DetailedApiRequestError catch (e) {
          if (e.status == 401 && attempt == 0) {
            await signedIn.authorizationClient.clearAuthorizationToken(
              accessToken: authorization.accessToken,
            );
            continue;
          }
          rethrow;
        } finally {
          client.close();
        }
      }
      return const Left(BackupFailure.authorizationRequired());
    } on GoogleSignInException catch (e) {
      return Left(_signInFailure(e));
    } catch (e) {
      return Left(_failureOf(e));
    }
  }

  static RemoteBackup _toRemote(drive.File file) => RemoteBackup(
        id: file.id!,
        createdAt: file.createdTime ?? DateTime.fromMillisecondsSinceEpoch(0),
        sizeBytes: int.tryParse(file.size ?? '') ?? 0,
      );

  static BackupFailure _signInFailure(GoogleSignInException e) =>
      switch (e.code) {
        GoogleSignInExceptionCode.canceled => const BackupFailure.cancelled(),
        GoogleSignInExceptionCode.interrupted ||
        GoogleSignInExceptionCode.uiUnavailable =>
          const BackupFailure.authorizationRequired(),
        _ => BackupFailure.unexpected(e.code.name),
      };

  static BackupFailure _failureOf(Object e) => switch (e) {
        drive.DetailedApiRequestError(status: 401 || 403) =>
          const BackupFailure.authorizationRequired(),
        drive.DetailedApiRequestError(status: 404) =>
          const BackupFailure.noBackups(),
        SocketException() ||
        http.ClientException() ||
        TimeoutException() =>
          const BackupFailure.network(),
        _ => BackupFailure.unexpected(e.runtimeType.toString()),
      };
}
