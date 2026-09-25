part of 'restore_bloc.dart';

@freezed
sealed class RestoreEvent with _$RestoreEvent {
  /// Checks whether the vault already has entries (merge/replace choice).
  const factory RestoreEvent.started() = _Started;
  const factory RestoreEvent.connectRequested() = _ConnectRequested;
  const factory RestoreEvent.backupSelected(RemoteBackup backup) =
      _BackupSelected;
  const factory RestoreEvent.backupConfirmed() = _BackupConfirmed;
  const factory RestoreEvent.keySubmitted(List<String> words) = _KeySubmitted;
  const factory RestoreEvent.modeChanged(RestoreMode mode) = _ModeChanged;
  const factory RestoreEvent.keepBackingUpChanged(bool keep) =
      _KeepBackingUpChanged;
  const factory RestoreEvent.restoreConfirmed() = _RestoreConfirmed;
  const factory RestoreEvent.backPressed() = _BackPressed;
}
