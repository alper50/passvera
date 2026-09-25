import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/backupSyncBloc/backup_sync_bloc.dart';
import 'package:passvera/domain/errors/backup_failures.dart';

import 'fakes.dart';

void main() {
  const tick = Duration(milliseconds: 20);
  late FakeBackupRepository repository;
  late FakeVaultChanges changes;
  late BackupSyncBloc bloc;

  BackupSyncBloc build(FakeBackupRepository repo) => BackupSyncBloc(
        repo,
        changes,
        // Longer than one [wait] tick, so "not yet" checks are meaningful.
        debounce: tick * 3,
        retryBase: tick * 3,
        retryMax: tick * 6,
      );

  Future<void> wait([int ticks = 3]) =>
      Future<void>.delayed(tick * ticks + const Duration(milliseconds: 5));

  setUp(() => changes = FakeVaultChanges());
  tearDown(() => bloc.close());

  test('bursts of vault changes produce one debounced upload', () async {
    repository = FakeBackupRepository();
    bloc = build(repository)..add(const BackupSyncEvent.started());
    await wait(1);

    for (var i = 0; i < 5; i++) {
      changes.controller.add(null);
    }
    await wait(1);
    expect(repository.uploads, 0, reason: 'still inside the quiet period');
    expect(bloc.state.status!.hasPendingChanges, isTrue);

    await wait(4);
    expect(repository.uploads, 1);
    expect(bloc.state.status!.hasPendingChanges, isFalse);
    expect(bloc.state.lastFailure, none<BackupFailure>());
  });

  test('uploads leftovers from a previous run on start', () async {
    repository = FakeBackupRepository(pending: true);
    bloc = build(repository)..add(const BackupSyncEvent.started());
    await wait();
    expect(repository.uploads, 1);
  });

  test('retries a network failure with backoff', () async {
    repository = FakeBackupRepository(pending: true)
      ..backupResults.add(const Left(BackupFailure.network()));
    bloc = build(repository)..add(const BackupSyncEvent.started());

    await wait(1);
    expect(repository.uploads, 1);
    expect(bloc.state.lastFailure, some(const BackupFailure.network()));

    await wait(5);
    expect(repository.uploads, 2);
    expect(bloc.state.lastFailure, none<BackupFailure>());
  });

  test('does not retry when the user must sign in again', () async {
    repository = FakeBackupRepository(pending: true)
      ..backupResults.add(const Left(BackupFailure.authorizationRequired()));
    bloc = build(repository)..add(const BackupSyncEvent.started());

    await wait(6);
    expect(repository.uploads, 1);
    expect(
      bloc.state.lastFailure,
      some(const BackupFailure.authorizationRequired()),
    );
  });

  test('does nothing while backup is off', () async {
    repository = FakeBackupRepository(enabled: false);
    bloc = build(repository)..add(const BackupSyncEvent.started());
    changes.controller.add(null);
    bloc.add(const BackupSyncEvent.syncRequested());
    await wait();
    expect(repository.uploads, 0);
  });
}
