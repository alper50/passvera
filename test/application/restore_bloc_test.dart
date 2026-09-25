import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/restoreBloc/restore_bloc.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/backup/restore_mode.dart';
import 'package:passvera/domain/errors/backup_failures.dart';

import 'fakes.dart';

void main() {
  final key = RecoveryKey.generate(Random(11));
  late FakeBackupRepository backup;
  late FakeKeysRepository keys;
  late RestoreBloc bloc;

  Future<void> send(RestoreEvent event) async {
    bloc.add(event);
    await Future<void>.delayed(Duration.zero);
    await Future<void>.delayed(Duration.zero);
  }

  void build({List<ApplicationModel> vault = const []}) {
    backup = FakeBackupRepository(enabled: false)..backupKey = key;
    keys = FakeKeysRepository()..storedValues = vault;
    bloc = RestoreBloc(backup, keys, FakeAuthenticatorRepository(const []));
  }

  Future<void> reachPreview() async {
    await send(const RestoreEvent.started());
    await send(const RestoreEvent.connectRequested());
    await send(const RestoreEvent.backupConfirmed());
    await send(RestoreEvent.keySubmitted(key.words));
  }

  tearDown(() => bloc.close());

  test('fresh install: restores, keeps backing up, finishes onboarding',
      () async {
    build();
    await reachPreview();
    expect(bloc.state.step, RestoreStep.preview);
    expect(bloc.state.vaultHasEntries, isFalse);

    await send(const RestoreEvent.modeChanged(RestoreMode.replace));
    await send(const RestoreEvent.restoreConfirmed());

    expect(bloc.state.step, RestoreStep.done);
    expect(backup.restoredWith, RestoreMode.merge, reason: 'empty vault');
    expect(backup.enabledKey, key);
    expect(backup.enabledAccount, 'me@example.com');
    expect(keys.onboardCompleted, isTrue);
  });

  test('existing vault: honours replace and the keep-backing-up switch',
      () async {
    build(vault: const [ApplicationModel(key: 'Gmail', value: 'x')]);
    await reachPreview();
    expect(bloc.state.vaultHasEntries, isTrue);

    await send(const RestoreEvent.modeChanged(RestoreMode.replace));
    await send(const RestoreEvent.keepBackingUpChanged(false));
    await send(const RestoreEvent.restoreConfirmed());

    expect(backup.restoredWith, RestoreMode.replace);
    expect(backup.enabledKey, isNull);
  });

  test('a wrong key stays on the key step', () async {
    build();
    await send(const RestoreEvent.connectRequested());
    await send(const RestoreEvent.backupConfirmed());
    await send(
        RestoreEvent.keySubmitted(RecoveryKey.generate(Random(12)).words));

    expect(bloc.state.step, RestoreStep.enterKey);
    expect(bloc.state.failure, some(const BackupFailure.wrongRecoveryKey()));
    expect(backup.restoredWith, isNull);
  });

  test('an account without backups stays on the connect step', () async {
    build();
    backup.hasRemoteBackups = false;
    await send(const RestoreEvent.connectRequested());

    expect(bloc.state.step, RestoreStep.connect);
    expect(bloc.state.failure, some(const BackupFailure.noBackups()));
  });
}
