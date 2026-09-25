import 'package:dartz/dartz.dart';
import 'package:passvera/domain/backup/backup_payload.dart';
import 'package:passvera/domain/backup/backup_status.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/backup/remote_backup.dart';
import 'package:passvera/domain/backup/restore_mode.dart';
import 'package:passvera/domain/errors/backup_failures.dart';

abstract class IBackupRepository {
  Future<Either<BackupFailure, BackupStatus>> status();

  /// Interactive: pick a Google account and grant Drive app-folder access.
  /// Right = account email.
  Future<Either<BackupFailure, String>> connectAccount();

  /// Turns on automatic backups with [key] and uploads the vault now.
  Future<Either<BackupFailure, Unit>> enable({
    required RecoveryKey key,
    required String accountEmail,
  });

  /// Uploads the current vault if backup is enabled (no UI).
  Future<Either<BackupFailure, Unit>> backupNow();

  /// Records that the vault changed since the last upload.
  Future<Either<BackupFailure, Unit>> markPendingChanges();

  /// The key stored on this device (for showing it again).
  Future<Either<BackupFailure, RecoveryKey>> readRecoveryKey();

  /// Stops automatic backups; optionally deletes the Drive backups too.
  Future<Either<BackupFailure, Unit>> disable({required bool deleteRemote});

  /// Backups in [account] (from [connectAccount] or [status]), newest first.
  Future<Either<BackupFailure, List<RemoteBackup>>> listRemoteBackups({
    required String account,
  });

  /// Downloads and decrypts one backup (for preview or "test backup").
  Future<Either<BackupFailure, BackupPayload>> openRemoteBackup({
    required RemoteBackup backup,
    required RecoveryKey key,
    required String account,
  });

  /// Writes [payload] into the vault. Right = number of entries written.
  Future<Either<BackupFailure, int>> restore({
    required BackupPayload payload,
    required RestoreMode mode,
  });
}
