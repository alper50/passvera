import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/backup/backup_payload.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/backup/remote_backup.dart';
import 'package:passvera/domain/backup/restore_mode.dart';
import 'package:passvera/domain/errors/backup_failures.dart';
import 'package:passvera/infrastructure/authenticator/authenticator_service.dart';
import 'package:passvera/infrastructure/backup/backup_codec.dart';
import 'package:passvera/infrastructure/backup/backup_remote.dart';
import 'package:passvera/infrastructure/backup/backup_service.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';
import 'package:passvera/infrastructure/keys/storage_keys.dart';

const _account = 'me@example.com';

class FakeRemote implements BackupRemote {
  final files = <RemoteBackup, List<int>>{};
  BackupFailure? failUploads;
  BackupFailure? failDeletes;
  Future<void> Function()? duringUpload;
  var _clock = 0;

  @override
  Future<Either<BackupFailure, String>> connect() async =>
      const Right(_account);

  @override
  Future<Either<BackupFailure, RemoteBackup>> upload(
    List<int> bytes, {
    required DateTime createdAt,
    required String account,
  }) async {
    expect(account, _account);
    await duringUpload?.call();
    if (failUploads != null) return Left(failUploads!);
    final backup = RemoteBackup(
      id: 'f${_clock++}',
      createdAt: DateTime.utc(2026).add(Duration(minutes: _clock)),
      sizeBytes: bytes.length,
    );
    files[backup] = bytes;
    return Right(backup);
  }

  @override
  Future<Either<BackupFailure, List<RemoteBackup>>> list({
    required String account,
  }) async =>
      Right(files.keys.toList()
        ..sort((a, b) => b.createdAt.compareTo(a.createdAt)));

  @override
  Future<Either<BackupFailure, List<int>>> download(
    String id, {
    required String account,
  }) async =>
      Right(files.entries.firstWhere((e) => e.key.id == id).value);

  @override
  Future<Either<BackupFailure, Unit>> delete(
    String id, {
    required String account,
  }) async {
    if (failDeletes != null) return Left(failDeletes!);
    files.removeWhere((k, _) => k.id == id);
    return const Right(unit);
  }

  var disconnected = false;

  @override
  Future<void> disconnect() async => disconnected = true;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final key = RecoveryKey.generate(Random(3));
  final codec = BackupCodec();
  late KeysService keys;
  late FakeRemote remote;
  late BackupService service;

  const gmail = ApplicationModel(key: 'Gmail', value: 'g-pass', tag: 'Mail');
  const github = AuthenticatorEntry(
    id: 'totp:github%7Cme',
    issuer: 'GitHub',
    account: 'me',
    secret: 'JBSWY3DPEHPK3PXP',
  );

  void seed(Map<String, String> extra) {
    FlutterSecureStorage.setMockInitialValues({
      StorageKeys.schema: StorageKeys.currentSchema,
      StorageKeys.onboard: StorageKeys.onboardCompletedValue,
      StorageKeys.pinHash: 'hash',
      StorageKeys.password(gmail.key): gmail.toStorageValue(),
      github.id: github.toStorageValue(),
      ...extra,
    });
    keys = KeysService();
    remote = FakeRemote();
    service = BackupService(keys, AuthenticatorService(keys), codec, remote);
  }

  Future<BackupPayload> decodeLatest() async {
    final latest =
        (await remote.list(account: _account)).getOrElse(() => []).first;
    return (await codec.decode(remote.files[latest]!, key))
        .getOrElse(() => throw StateError('undecodable'));
  }

  setUp(() => seed({}));

  test('enable uploads the vault, decryptable with the key, without meta',
      () async {
    expect(
      await service.enable(key: key, accountEmail: _account),
      const Right<BackupFailure, Unit>(unit),
    );

    final payload = await decodeLatest();
    expect(payload.passwords, [gmail]);
    expect(payload.authenticators.single.secret, github.secret);
    expect(payload.authenticators.single.issuer, 'GitHub');

    final status = (await service.status()).getOrElse(() => throw 'x');
    expect(status.isEnabled, isTrue);
    expect(status.accountEmail, _account);
    expect(status.lastSuccessAt, isNotNull);
    expect(status.hasPendingChanges, isFalse);
    expect(
      (await service.readRecoveryKey()).getOrElse(() => throw 'x'),
      key,
    );
  });

  test('backupNow without enabling reports notEnabled', () async {
    expect(
      await service.backupNow(),
      const Left<BackupFailure, Unit>(BackupFailure.notEnabled()),
    );
  });

  test('a change during the upload stays pending', () async {
    await service.enable(key: key, accountEmail: _account);
    await service.markPendingChanges();
    remote.duringUpload = () async {
      remote.duringUpload = null;
      await service.markPendingChanges();
    };

    await service.backupNow();

    final status = (await service.status()).getOrElse(() => throw 'x');
    expect(status.hasPendingChanges, isTrue);
  });

  test('a failed upload keeps the change pending', () async {
    await service.enable(key: key, accountEmail: _account);
    final firstSuccess =
        (await service.status()).getOrElse(() => throw 'x').lastSuccessAt;
    await service.markPendingChanges();
    remote.failUploads = const BackupFailure.network();

    expect(
      await service.backupNow(),
      const Left<BackupFailure, Unit>(BackupFailure.network()),
    );
    final status = (await service.status()).getOrElse(() => throw 'x');
    expect(status.hasPendingChanges, isTrue);
    expect(status.lastSuccessAt, firstSuccess);
  });

  test('keeps the newest ${BackupService.keepVersions} versions', () async {
    await service.enable(key: key, accountEmail: _account);
    for (var i = 0; i < 14; i++) {
      await service.backupNow();
    }
    final listed = (await remote.list(account: _account)).getOrElse(() => []);
    expect(listed, hasLength(BackupService.keepVersions));
    expect(listed.first.id, 'f14', reason: 'newest kept');
  });

  test('disable clears local settings and optionally the Drive copies',
      () async {
    await service.enable(key: key, accountEmail: _account);
    expect(
      await service.disable(deleteRemote: true),
      const Right<BackupFailure, Unit>(unit),
    );
    expect(remote.files, isEmpty);
    expect(remote.disconnected, isTrue);
    final status = (await service.status()).getOrElse(() => throw 'x');
    expect(status.isEnabled, isFalse);
    expect(await keys.storage.read(key: StorageKeys.backupRecoveryKey), isNull);
  });

  test('disable keeps backup on when Drive cleanup fails', () async {
    await service.enable(key: key, accountEmail: _account);
    remote.failDeletes = const BackupFailure.network();

    expect((await service.disable(deleteRemote: true)).isLeft(), isTrue);
    expect(
      (await service.status()).getOrElse(() => throw 'x').isEnabled,
      isTrue,
    );
  });

  test('opening with another key reports wrongRecoveryKey', () async {
    await service.enable(key: key, accountEmail: _account);
    final latest =
        (await remote.list(account: _account)).getOrElse(() => []).first;
    expect(
      await service.openRemoteBackup(
        backup: latest,
        key: RecoveryKey.generate(Random(99)),
        account: _account,
      ),
      const Left<BackupFailure, BackupPayload>(
        BackupFailure.wrongRecoveryKey(),
      ),
    );
  });

  group('restore', () {
    final backup = BackupPayload(
      createdAt: DateTime.utc(2026),
      passwords: const [
        ApplicationModel(key: 'Gmail', value: 'from-backup', tag: 'Mail'),
        ApplicationModel(key: 'Bank', value: 'b', tag: 'Finance'),
      ],
      authenticators: const [
        AuthenticatorEntry(
          id: '',
          issuer: 'AWS',
          account: 'root',
          secret: 'GEZDGNBVGY3TQOJQ',
        ),
      ],
    );

    test('merge keeps device entries and adds the rest', () async {
      final written = await service.restore(
        payload: backup,
        mode: RestoreMode.merge,
      );
      expect(written, const Right<BackupFailure, int>(2));

      final all = await keys.storage.readAll();
      expect(all[StorageKeys.password('Gmail')], gmail.toStorageValue());
      expect(all.containsKey(StorageKeys.password('Bank')), isTrue);
      expect(all.containsKey('totp:aws%7Croot'), isTrue);
      expect(all.containsKey(github.id), isTrue, reason: 'kept');
      expect(all[StorageKeys.pinHash], 'hash', reason: 'meta untouched');
    });

    test('replace mirrors the backup and leaves meta alone', () async {
      final written = await service.restore(
        payload: backup,
        mode: RestoreMode.replace,
      );
      expect(written, const Right<BackupFailure, int>(3));

      final all = await keys.storage.readAll();
      expect(
        all[StorageKeys.password('Gmail')],
        backup.passwords.first.toStorageValue(),
      );
      expect(all.containsKey(github.id), isFalse, reason: 'not in backup');
      expect(all[StorageKeys.pinHash], 'hash');
      expect(all[StorageKeys.onboard], StorageKeys.onboardCompletedValue);
    });
  });
}
