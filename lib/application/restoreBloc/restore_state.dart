part of 'restore_bloc.dart';

enum RestoreStep { connect, chooseBackup, enterKey, preview, done }

@freezed
abstract class RestoreState with _$RestoreState {
  const factory RestoreState({
    required RestoreStep step,
    required bool isBusy,
    String? account,
    required List<RemoteBackup> backups,
    RemoteBackup? selected,
    RecoveryKey? key,
    BackupPayload? payload,

    /// Replace is only offered when there is something to replace.
    required bool vaultHasEntries,
    required RestoreMode mode,

    /// Turn on automatic backup with the same key and account afterwards.
    required bool keepBackingUp,

    /// Entries written by the finished restore.
    required int restoredCount,
    required Option<BackupFailure> failure,
  }) = _RestoreState;

  factory RestoreState.initial() => RestoreState(
        step: RestoreStep.connect,
        isBusy: false,
        backups: const [],
        vaultHasEntries: false,
        mode: RestoreMode.merge,
        keepBackingUp: true,
        restoredCount: 0,
        failure: none(),
      );
}
