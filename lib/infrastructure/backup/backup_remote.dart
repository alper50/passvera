import 'package:dartz/dartz.dart';
import 'package:passvera/domain/backup/remote_backup.dart';
import 'package:passvera/domain/errors/backup_failures.dart';

/// Where encrypted backup files live. Only ever sees ciphertext.
/// [account] is the Google account the backup belongs to; an operation must
/// fail with `authorizationRequired` rather than touch another account.
abstract class BackupRemote {
  /// Interactive account pick + consent. Right = account email.
  Future<Either<BackupFailure, String>> connect();

  Future<Either<BackupFailure, RemoteBackup>> upload(
    List<int> bytes, {
    required DateTime createdAt,
    required String account,
  });

  /// Newest first.
  Future<Either<BackupFailure, List<RemoteBackup>>> list({
    required String account,
  });

  Future<Either<BackupFailure, List<int>>> download(
    String id, {
    required String account,
  });

  Future<Either<BackupFailure, Unit>> delete(
    String id, {
    required String account,
  });

  /// Revokes the app's Drive access.
  Future<void> disconnect();
}
