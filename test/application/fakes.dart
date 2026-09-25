import 'package:dartz/dartz.dart';
import 'package:passvera/domain/application_model.dart';
import 'dart:async';

import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/backup/backup_payload.dart';
import 'package:passvera/domain/backup/backup_status.dart';
import 'package:passvera/domain/backup/i_backup_repository.dart';
import 'package:passvera/domain/backup/i_vault_changes.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/backup/remote_backup.dart';
import 'package:passvera/domain/backup/restore_mode.dart';
import 'package:passvera/domain/errors/backup_failures.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/domain/errors/clipboard_failures.dart';
import 'package:passvera/domain/errors/lock_failures.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_authenticator_repository.dart';
import 'package:passvera/domain/i_clipboard_repository.dart';
import 'package:passvera/domain/i_keys_repository.dart';
import 'package:passvera/domain/i_lock_repository.dart';

class FakeLockRepository implements ILockRepository {
  FakeLockRepository(this.isPinSetResult, {this.pin = '1234'});

  final Either<LockFailure, bool> isPinSetResult;
  final String pin;

  @override
  Future<Either<LockFailure, bool>> isPinSet() async => isPinSetResult;

  @override
  Future<Either<LockFailure, Unit>> verifyPin({required String pin}) async =>
      pin == this.pin ? const Right(unit) : const Left(LockFailure.wrongPin());

  @override
  dynamic noSuchMethod(Invocation invocation) =>
      throw UnimplementedError(invocation.memberName.toString());
}

class FakeKeysRepository implements IKeysRepository {
  final updateCalls = <ApplicationModel>[];
  Either<StorageFailure, Unit> updateResult = const Right(unit);
  List<ApplicationModel> storedValues = const [];
  bool onboardCompleted = false;

  @override
  Future<Either<StorageFailure, Unit>> completeOnboard() async {
    onboardCompleted = true;
    return const Right(unit);
  }

  @override
  Future<Either<StorageFailure, List<ApplicationModel>>> getAllValues() async =>
      Right(storedValues);

  @override
  Future<Either<StorageFailure, Unit>> updateSingleValue({
    required ApplicationModel model,
    required String oldKey,
  }) async {
    updateCalls.add(model);
    return updateResult;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) =>
      throw UnimplementedError(invocation.memberName.toString());
}

class FakeClipboardRepository implements IClipboardRepository {
  final copied = <String>[];
  final ttls = <Duration>[];

  @override
  Future<Either<ClipboardFailure, Unit>> copySensitive({
    required String text,
    required Duration clearAfter,
  }) async {
    copied.add(text);
    ttls.add(clearAfter);
    return const Right(unit);
  }
}

class FakeAuthenticatorRepository implements IAuthenticatorRepository {
  FakeAuthenticatorRepository(this.existing);

  final List<AuthenticatorEntry> existing;
  final saved = <AuthenticatorEntry>[];

  @override
  Future<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
      getAll() async => Right(existing);

  @override
  Future<Either<AuthenticatorFailure, int>> addEntries(
    List<AuthenticatorEntry> entries,
  ) async {
    saved.addAll(entries);
    return Right(entries.length);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) =>
      throw UnimplementedError(invocation.memberName.toString());
}

class FakeVaultChanges implements IVaultChanges {
  final controller = StreamController<void>.broadcast();

  @override
  Stream<void> get changes => controller.stream;
}

class FakeBackupRepository implements IBackupRepository {
  FakeBackupRepository({
    bool enabled = true,
    bool pending = false,
    DateTime? lastSuccessAt,
  }) : _status = BackupStatus(
          isConfigured: true,
          isEnabled: enabled,
          accountEmail: enabled ? 'me@example.com' : null,
          lastSuccessAt: lastSuccessAt,
          hasPendingChanges: pending,
        );

  /// What [openRemoteBackup] returns for [backupKey].
  BackupPayload payload = BackupPayload(
    createdAt: DateTime.utc(2026),
    passwords: const [],
    authenticators: const [],
  );

  BackupStatus _status;
  int uploads = 0;

  /// Results for successive backupNow calls; success once exhausted.
  final backupResults = <Either<BackupFailure, Unit>>[];

  @override
  Future<Either<BackupFailure, BackupStatus>> status() async => Right(_status);

  RecoveryKey? enabledKey;
  String? enabledAccount;
  RecoveryKey? storedKey;
  bool? disabledWithRemoteDelete;
  Either<BackupFailure, String> connectResult = const Right('me@example.com');

  /// The key the "latest backup" was made with.
  RecoveryKey? backupKey;

  @override
  Future<Either<BackupFailure, String>> connectAccount() async => connectResult;

  @override
  Future<Either<BackupFailure, Unit>> enable({
    required RecoveryKey key,
    required String accountEmail,
  }) async {
    enabledKey = key;
    enabledAccount = accountEmail;
    storedKey = key;
    _status = _status.copyWith(isEnabled: true, accountEmail: accountEmail);
    return backupNow();
  }

  @override
  Future<Either<BackupFailure, RecoveryKey>> readRecoveryKey() async =>
      storedKey == null
          ? const Left(BackupFailure.notEnabled())
          : Right(storedKey!);

  @override
  Future<Either<BackupFailure, Unit>> disable({
    required bool deleteRemote,
  }) async {
    disabledWithRemoteDelete = deleteRemote;
    storedKey = null;
    _status = _status.copyWith(isEnabled: false, accountEmail: null);
    return const Right(unit);
  }

  bool hasRemoteBackups = true;
  RestoreMode? restoredWith;
  BackupPayload? restoredPayload;

  @override
  Future<Either<BackupFailure, List<RemoteBackup>>> listRemoteBackups({
    required String account,
  }) async =>
      hasRemoteBackups
          ? Right([
              RemoteBackup(
                id: 'latest',
                createdAt: DateTime.utc(2026),
                sizeBytes: 1,
              ),
            ])
          : const Left(BackupFailure.noBackups());

  @override
  Future<Either<BackupFailure, int>> restore({
    required BackupPayload payload,
    required RestoreMode mode,
  }) async {
    restoredWith = mode;
    restoredPayload = payload;
    return Right(payload.passwords.length + payload.authenticators.length);
  }

  @override
  Future<Either<BackupFailure, BackupPayload>> openRemoteBackup({
    required RemoteBackup backup,
    required RecoveryKey key,
    required String account,
  }) async =>
      key == backupKey
          ? Right(payload)
          : const Left(BackupFailure.wrongRecoveryKey());

  @override
  Future<Either<BackupFailure, Unit>> markPendingChanges() async {
    if (_status.isEnabled) {
      _status = _status.copyWith(hasPendingChanges: true);
    }
    return const Right(unit);
  }

  @override
  Future<Either<BackupFailure, Unit>> backupNow() async {
    uploads++;
    final result = backupResults.isEmpty
        ? const Right<BackupFailure, Unit>(unit)
        : backupResults.removeAt(0);
    if (result.isRight()) {
      _status = _status.copyWith(
        hasPendingChanges: false,
        lastSuccessAt: DateTime.now(),
      );
    }
    return result;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) =>
      throw UnimplementedError(invocation.memberName.toString());
}
