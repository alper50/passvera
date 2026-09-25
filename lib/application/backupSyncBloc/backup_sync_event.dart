part of 'backup_sync_bloc.dart';

@freezed
sealed class BackupSyncEvent with _$BackupSyncEvent {
  /// Once at app start: subscribes to vault changes, uploads leftovers.
  const factory BackupSyncEvent.started() = _Started;
  const factory BackupSyncEvent.vaultChanged() = _VaultChanged;
  const factory BackupSyncEvent.appResumed() = _AppResumed;

  /// User pressed "Back up now".
  const factory BackupSyncEvent.syncRequested() = _SyncRequested;

  /// Backup settings changed elsewhere (enabled, disabled, key rotated).
  const factory BackupSyncEvent.statusRefreshRequested() =
      _StatusRefreshRequested;

  /// Internal: debounce/retry timer fired.
  const factory BackupSyncEvent.uploadDue() = _UploadDue;
}
