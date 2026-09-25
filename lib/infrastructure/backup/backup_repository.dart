import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/backup/backup_payload.dart';
import 'package:passvera/domain/backup/backup_status.dart';
import 'package:passvera/domain/backup/i_backup_repository.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/backup/remote_backup.dart';
import 'package:passvera/domain/backup/restore_mode.dart';
import 'package:passvera/domain/errors/backup_failures.dart';
import 'package:passvera/infrastructure/backup/backup_service.dart';

@LazySingleton(as: IBackupRepository)
class BackupRepository implements IBackupRepository {
  BackupRepository(this._service);

  final BackupService _service;

  @override
  Future<Either<BackupFailure, BackupStatus>> status() => _service.status();

  @override
  Future<Either<BackupFailure, String>> connectAccount() =>
      _service.connectAccount();

  @override
  Future<Either<BackupFailure, Unit>> enable({
    required RecoveryKey key,
    required String accountEmail,
  }) =>
      _service.enable(key: key, accountEmail: accountEmail);

  @override
  Future<Either<BackupFailure, Unit>> backupNow() => _service.backupNow();

  @override
  Future<Either<BackupFailure, Unit>> markPendingChanges() =>
      _service.markPendingChanges();

  @override
  Future<Either<BackupFailure, RecoveryKey>> readRecoveryKey() =>
      _service.readRecoveryKey();

  @override
  Future<Either<BackupFailure, Unit>> disable({required bool deleteRemote}) =>
      _service.disable(deleteRemote: deleteRemote);

  @override
  Future<Either<BackupFailure, List<RemoteBackup>>> listRemoteBackups({
    required String account,
  }) =>
      _service.listRemoteBackups(account: account);

  @override
  Future<Either<BackupFailure, BackupPayload>> openRemoteBackup({
    required RemoteBackup backup,
    required RecoveryKey key,
    required String account,
  }) =>
      _service.openRemoteBackup(backup: backup, key: key, account: account);

  @override
  Future<Either<BackupFailure, int>> restore({
    required BackupPayload payload,
    required RestoreMode mode,
  }) =>
      _service.restore(payload: payload, mode: mode);
}
