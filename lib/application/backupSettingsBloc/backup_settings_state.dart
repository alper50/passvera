part of 'backup_settings_bloc.dart';

enum BackupSetupStep { none, showWords, confirmWords }

/// One-shot outcomes for the UI (snackbar/navigation).
enum BackupSettingsNotice {
  enabled,

  /// Settings saved, first upload failed; the sync will retry.
  enabledUploadPending,
  confirmationMismatch,
  testPassed,
  disabled,
}

@freezed
abstract class BackupSettingsState with _$BackupSettingsState {
  const factory BackupSettingsState({
    BackupStatus? status,

    /// Showing the key needs the PIN when one is set.
    required bool isPinSet,
    required bool isBusy,
    required BackupSetupStep setupStep,
    String? setupAccount,

    /// Generated for setup; stored only once confirmed.
    RecoveryKey? pendingKey,

    /// Zero-based word indices asked back during setup.
    required List<int> confirmPositions,

    /// The stored key, shown after a PIN check.
    RecoveryKey? revealedKey,
    required Option<BackupFailure> failure,
    required Option<LockFailure> lockFailure,
    required Option<BackupSettingsNotice> notice,
  }) = _BackupSettingsState;

  factory BackupSettingsState.initial() => BackupSettingsState(
        isPinSet: true,
        isBusy: false,
        setupStep: BackupSetupStep.none,
        confirmPositions: const [],
        failure: none(),
        lockFailure: none(),
        notice: none(),
      );
}
