import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/backup/backup_payload.dart';
import 'package:passvera/domain/backup/backup_status.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/backup/remote_backup.dart';
import 'package:passvera/domain/backup/restore_mode.dart';
import 'package:passvera/domain/errors/backup_failures.dart';
import 'package:passvera/domain/otp_auth_parser.dart';
import 'package:passvera/infrastructure/authenticator/authenticator_service.dart';
import 'package:passvera/infrastructure/backup/backup_codec.dart';
import 'package:passvera/infrastructure/backup/backup_remote.dart';
import 'package:passvera/infrastructure/backup/google_config.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';
import 'package:passvera/infrastructure/keys/storage_keys.dart';

/// Encrypted vault backups to [BackupRemote]. Settings live next to the
/// vault in secure storage (`meta:backup_*`); the recovery key stored there
/// lets uploads run without asking the user.
@lazySingleton
class BackupService {
  BackupService(this._keys, this._authenticators, this._codec, this._remote);

  final KeysService _keys;
  final AuthenticatorService _authenticators;
  final BackupCodec _codec;
  final BackupRemote _remote;

  /// Older uploads beyond this are pruned (history against bad uploads and
  /// accidental deletes that were already synced).
  static const int keepVersions = 10;

  FlutterSecureStorage get _storage => _keys.storage;

  Future<Either<BackupFailure, BackupStatus>> status() => _guard(() async {
        final lastMs = int.tryParse(
          await _storage.read(key: StorageKeys.backupLastSuccess) ?? '',
        );
        return Right(
          BackupStatus(
            isConfigured: GoogleConfig.isConfigured,
            isEnabled: await _storage.containsKey(
              key: StorageKeys.backupRecoveryKey,
            ),
            accountEmail: await _storage.read(key: StorageKeys.backupAccount),
            lastSuccessAt: lastMs == null
                ? null
                : DateTime.fromMillisecondsSinceEpoch(lastMs),
            hasPendingChanges:
                await _storage.containsKey(key: StorageKeys.backupPending),
          ),
        );
      });

  Future<Either<BackupFailure, String>> connectAccount() => _remote.connect();

  Future<Either<BackupFailure, Unit>> enable({
    required RecoveryKey key,
    required String accountEmail,
  }) async {
    final saved = await _guard(() async {
      await _storage.write(
        key: StorageKeys.backupRecoveryKey,
        value: _hex(key.bytes),
      );
      await _storage.write(key: StorageKeys.backupAccount, value: accountEmail);
      await _writePendingToken();
      return const Right(unit);
    });
    if (saved.isLeft()) return saved;
    return backupNow();
  }

  Future<Either<BackupFailure, Unit>> backupNow() => _guard(() async {
        final key = await _storedKey();
        final account = await _storage.read(key: StorageKeys.backupAccount);
        if (key == null || account == null) {
          return const Left(BackupFailure.notEnabled());
        }
        // A change that lands during the upload writes a new token and must
        // stay pending.
        final pendingAtStart =
            await _storage.read(key: StorageKeys.backupPending);

        final payload = await _currentVault();
        if (payload.isLeft()) return payload.map((_) => unit);
        final createdAt = DateTime.now();
        final bytes = await _codec.encode(
          payload.getOrElse(() => throw StateError('checked')),
          key,
        );

        final uploaded = await _remote.upload(
          bytes,
          createdAt: createdAt,
          account: account,
        );
        if (uploaded.isLeft()) return uploaded.map((_) => unit);

        await _storage.write(
          key: StorageKeys.backupLastSuccess,
          value: '${createdAt.millisecondsSinceEpoch}',
        );
        if (await _storage.read(key: StorageKeys.backupPending) ==
            pendingAtStart) {
          await _storage.delete(key: StorageKeys.backupPending);
        }
        await _prune(account);
        return const Right(unit);
      });

  Future<Either<BackupFailure, Unit>> markPendingChanges() => _guard(() async {
        if (await _storage.containsKey(key: StorageKeys.backupRecoveryKey)) {
          await _writePendingToken();
        }
        return const Right(unit);
      });

  Future<Either<BackupFailure, RecoveryKey>> readRecoveryKey() =>
      _guard(() async {
        final key = await _storedKey();
        return key == null
            ? const Left(BackupFailure.notEnabled())
            : Right(key);
      });

  Future<Either<BackupFailure, Unit>> disable({
    required bool deleteRemote,
  }) =>
      _guard(() async {
        final account = await _storage.read(key: StorageKeys.backupAccount);
        if (deleteRemote && account != null) {
          // Keep backup enabled if the remote cleanup fails, so the user can
          // retry instead of leaving orphaned backups behind.
          final listed = await _remote.list(account: account);
          if (listed.isLeft()) return listed.map((_) => unit);
          for (final backup in listed.getOrElse(() => const [])) {
            final deleted = await _remote.delete(backup.id, account: account);
            if (deleted.isLeft()) return deleted;
          }
        }
        for (final key in const [
          StorageKeys.backupRecoveryKey,
          StorageKeys.backupAccount,
          StorageKeys.backupLastSuccess,
          StorageKeys.backupPending,
        ]) {
          await _storage.delete(key: key);
        }
        await _remote.disconnect();
        return const Right(unit);
      });

  Future<Either<BackupFailure, List<RemoteBackup>>> listRemoteBackups({
    required String account,
  }) async {
    final listed = await _remote.list(account: account);
    return listed.flatMap(
      (backups) => backups.isEmpty
          ? const Left(BackupFailure.noBackups())
          : Right(backups),
    );
  }

  Future<Either<BackupFailure, BackupPayload>> openRemoteBackup({
    required RemoteBackup backup,
    required RecoveryKey key,
    required String account,
  }) async {
    final downloaded = await _remote.download(backup.id, account: account);
    return downloaded.fold(
      (failure) async => Left(failure),
      (bytes) => _codec.decode(bytes, key),
    );
  }

  /// Merge keeps what is on the device when a name/account already exists.
  /// Replace writes every backup entry first and only then removes entries
  /// the backup does not have, so an interruption never loses data.
  Future<Either<BackupFailure, int>> restore({
    required BackupPayload payload,
    required RestoreMode mode,
  }) =>
      _guard(() async {
        // Snapshot: the loops below write to and delete from storage.
        final existing = Map.of(await _storage.readAll());
        final replace = mode == RestoreMode.replace;
        final written = <String>{};

        for (final model in payload.passwords) {
          final key = StorageKeys.password(model.key);
          written.add(key);
          if (!replace && existing.containsKey(key)) continue;
          await _storage.write(key: key, value: model.toStorageValue());
        }
        for (final entry in payload.authenticators) {
          final id = OtpAuthParser.buildStorageId(
            issuer: entry.issuer,
            account: entry.account,
          );
          written.add(id);
          if (!replace && existing.containsKey(id)) continue;
          await _storage.write(
            key: id,
            value: entry.copyWith(id: id).toStorageValue(),
          );
        }

        if (replace) {
          for (final key in existing.keys) {
            final isEntry = key.startsWith(StorageKeys.passwordPrefix) ||
                key.startsWith(StorageKeys.totpPrefix);
            if (isEntry && !written.contains(key)) {
              await _storage.delete(key: key);
            }
          }
        }
        return Right(
          written.where((k) => replace || !existing.containsKey(k)).length,
        );
      });

  Future<Either<BackupFailure, BackupPayload>> _currentVault() async {
    final passwords = await _keys.getAllValues();
    final authenticators = await _authenticators.getAll();
    return passwords.fold(
      (f) => Left(BackupFailure.unexpected(f)),
      (List<ApplicationModel> p) => authenticators.fold(
        (f) => Left(BackupFailure.unexpected(f)),
        (List<AuthenticatorEntry> a) => Right(
          BackupPayload(
            createdAt: DateTime.now(),
            passwords: p,
            authenticators: a,
          ),
        ),
      ),
    );
  }

  Future<void> _prune(String account) async {
    final listed = await _remote.list(account: account);
    for (final old
        in listed.getOrElse(() => const []).skip(keepVersions).toList()) {
      // Best effort: a leftover version is retried on the next upload.
      await _remote.delete(old.id, account: account);
    }
  }

  Future<RecoveryKey?> _storedKey() async {
    final hex = await _storage.read(key: StorageKeys.backupRecoveryKey);
    if (hex == null) return null;
    return RecoveryKey.fromEntropy(_unhex(hex)).fold((_) => null, (k) => k);
  }

  Future<void> _writePendingToken() => _storage.write(
        key: StorageKeys.backupPending,
        value: '${DateTime.now().microsecondsSinceEpoch}',
      );

  Future<Either<BackupFailure, T>> _guard<T>(
    Future<Either<BackupFailure, T>> Function() body,
  ) async {
    try {
      return await body();
    } catch (e) {
      return Left(BackupFailure.unexpected(e.runtimeType.toString()));
    }
  }

  static String _hex(List<int> bytes) =>
      bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();

  static List<int> _unhex(String hex) => [
        for (var i = 0; i + 1 < hex.length; i += 2)
          int.parse(hex.substring(i, i + 2), radix: 16),
      ];
}
