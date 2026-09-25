import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/backupSettingsBloc/backup_settings_bloc.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/errors/backup_failures.dart';
import 'package:passvera/domain/errors/lock_failures.dart';

import 'fakes.dart';

void main() {
  late FakeBackupRepository backup;
  late BackupSettingsBloc bloc;

  Future<void> send(BackupSettingsEvent event) async {
    bloc.add(event);
    await Future<void>.delayed(Duration.zero);
    await Future<void>.delayed(Duration.zero);
  }

  setUp(() {
    backup = FakeBackupRepository(enabled: false);
    bloc = BackupSettingsBloc(
      backup,
      FakeLockRepository(const Right(true)),
      random: Random(5),
    );
  });
  tearDown(() => bloc.close());

  List<String> answers(List<String> words) =>
      [for (final i in bloc.state.confirmPositions) words[i]];

  test('setup shows 12 words and asks 3 distinct positions back', () async {
    await send(const BackupSettingsEvent.setupStarted());

    expect(bloc.state.setupStep, BackupSetupStep.showWords);
    expect(bloc.state.setupAccount, 'me@example.com');
    expect(bloc.state.pendingKey!.words, hasLength(12));
    final positions = bloc.state.confirmPositions;
    expect(positions, hasLength(BackupSettingsBloc.confirmCount));
    expect(positions.toSet(), hasLength(positions.length));
    expect(positions, [...positions]..sort());
  });

  test('wrong confirmation does not enable backup', () async {
    await send(const BackupSettingsEvent.setupStarted());
    await send(const BackupSettingsEvent.wordsWrittenDown());
    await send(const BackupSettingsEvent.confirmationSubmitted(
      ['abandon', 'abandon', 'abandon'],
    ));

    expect(backup.enabledKey, isNull);
    expect(bloc.state.setupStep, BackupSetupStep.confirmWords);
    expect(
      bloc.state.notice,
      some(BackupSettingsNotice.confirmationMismatch),
    );
  });

  test('correct confirmation enables backup with the shown key', () async {
    await send(const BackupSettingsEvent.setupStarted());
    final key = bloc.state.pendingKey!;
    await send(const BackupSettingsEvent.wordsWrittenDown());
    await send(BackupSettingsEvent.confirmationSubmitted(
      answers(key.words).map((w) => ' ${w.toUpperCase()} ').toList(),
    ));

    expect(backup.enabledKey, key);
    expect(backup.enabledAccount, 'me@example.com');
    expect(bloc.state.notice, some(BackupSettingsNotice.enabled));
    expect(bloc.state.setupStep, BackupSetupStep.none);
    expect(bloc.state.pendingKey, isNull, reason: 'not kept in state');
  });

  test('cancelled sign-in stays out of setup', () async {
    backup.connectResult = const Left(BackupFailure.cancelled());
    await send(const BackupSettingsEvent.setupStarted());

    expect(bloc.state.setupStep, BackupSetupStep.none);
    expect(bloc.state.failure, some(const BackupFailure.cancelled()));
  });

  test('revealing the key requires the PIN', () async {
    backup.storedKey = RecoveryKey.generate(Random(1));

    await send(const BackupSettingsEvent.revealRequested(pin: '0000'));
    expect(bloc.state.revealedKey, isNull);
    expect(bloc.state.lockFailure, some(const LockFailure.wrongPin()));

    await send(const BackupSettingsEvent.revealRequested(pin: '1234'));
    expect(bloc.state.revealedKey, backup.storedKey);

    await send(const BackupSettingsEvent.revealHidden());
    expect(bloc.state.revealedKey, isNull);
  });

  test('test backup tells a wrong key from the right one', () async {
    final key = RecoveryKey.generate(Random(2));
    backup
      ..backupKey = key
      ..storedKey = key;
    await backup.enable(key: key, accountEmail: 'me@example.com');
    await send(const BackupSettingsEvent.loaded());

    await send(BackupSettingsEvent.testRequested(
      RecoveryKey.generate(Random(3)).words,
    ));
    expect(bloc.state.failure, some(const BackupFailure.wrongRecoveryKey()));

    await send(BackupSettingsEvent.testRequested(key.words));
    expect(bloc.state.notice, some(BackupSettingsNotice.testPassed));
  });

  group('reconnect', () {
    setUp(() async {
      await backup.enable(
        key: RecoveryKey.generate(Random(4)),
        accountEmail: 'me@example.com',
      );
      await send(const BackupSettingsEvent.loaded());
    });

    test('same account renews access without a prompt', () async {
      await send(const BackupSettingsEvent.reconnectRequested());

      expect(bloc.state.notice, some(BackupSettingsNotice.reconnected));
      expect(bloc.state.pendingAccount, isNull);
      expect(backup.changedToAccount, isNull);
    });

    test('another account asks first, then switches', () async {
      backup.connectResult = const Right('new@example.com');
      await send(const BackupSettingsEvent.reconnectRequested());
      expect(bloc.state.pendingAccount, 'new@example.com');
      expect(backup.changedToAccount, isNull, reason: 'not before consent');

      await send(const BackupSettingsEvent.accountChangeConfirmed());
      expect(backup.changedToAccount, 'new@example.com');
      expect(bloc.state.status!.accountEmail, 'new@example.com');
      expect(bloc.state.notice, some(BackupSettingsNotice.accountChanged));
      expect(bloc.state.pendingAccount, isNull);
    });

    test('cancelling keeps the old account', () async {
      backup.connectResult = const Right('new@example.com');
      await send(const BackupSettingsEvent.reconnectRequested());
      await send(const BackupSettingsEvent.accountChangeCancelled());

      expect(backup.changedToAccount, isNull);
      expect(bloc.state.pendingAccount, isNull);
      expect(bloc.state.status!.accountEmail, 'me@example.com');
    });
  });
}
