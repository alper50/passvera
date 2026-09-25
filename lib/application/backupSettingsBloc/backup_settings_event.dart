part of 'backup_settings_bloc.dart';

@freezed
sealed class BackupSettingsEvent with _$BackupSettingsEvent {
  const factory BackupSettingsEvent.loaded() = _Loaded;

  /// Connect a Google account and generate a recovery key to show.
  const factory BackupSettingsEvent.setupStarted() = _SetupStarted;

  /// The user says the 12 words are written down; ask a few back.
  const factory BackupSettingsEvent.wordsWrittenDown() = _WordsWrittenDown;

  /// Back from the confirmation to the words (same key).
  const factory BackupSettingsEvent.wordsRequested() = _WordsRequested;

  /// Answers for [BackupSettingsState.confirmPositions], in that order.
  const factory BackupSettingsEvent.confirmationSubmitted(
    List<String> answers,
  ) = _ConfirmationSubmitted;

  const factory BackupSettingsEvent.setupCancelled() = _SetupCancelled;

  /// [pin] is required when an app PIN is set.
  const factory BackupSettingsEvent.revealRequested({String? pin}) =
      _RevealRequested;
  const factory BackupSettingsEvent.revealHidden() = _RevealHidden;

  /// Decrypt the latest Drive backup with [words] to prove the key works.
  const factory BackupSettingsEvent.testRequested(List<String> words) =
      _TestRequested;

  /// Re-pick the Google account: same account renews access, another one
  /// asks for confirmation ([BackupSettingsState.pendingAccount]).
  const factory BackupSettingsEvent.reconnectRequested() = _ReconnectRequested;
  const factory BackupSettingsEvent.accountChangeConfirmed() =
      _AccountChangeConfirmed;
  const factory BackupSettingsEvent.accountChangeCancelled() =
      _AccountChangeCancelled;

  const factory BackupSettingsEvent.disableRequested({
    required bool deleteRemote,
  }) = _DisableRequested;
}
