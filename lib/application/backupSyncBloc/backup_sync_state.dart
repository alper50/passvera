part of 'backup_sync_bloc.dart';

@freezed
abstract class BackupSyncState with _$BackupSyncState {
  const BackupSyncState._();

  const factory BackupSyncState({
    /// Null until loaded.
    BackupStatus? status,
    required bool isUploading,

    /// Failure of the latest upload attempt; none after a success.
    required Option<BackupFailure> lastFailure,
  }) = _BackupSyncState;

  factory BackupSyncState.initial() =>
      BackupSyncState(isUploading: false, lastFailure: none());

  bool get isEnabled => status?.isEnabled ?? false;
}
