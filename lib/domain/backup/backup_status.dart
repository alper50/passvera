import 'package:freezed_annotation/freezed_annotation.dart';

part 'backup_status.freezed.dart';

/// Backup state of this device, as persisted locally.
@freezed
abstract class BackupStatus with _$BackupStatus {
  const factory BackupStatus({
    /// False when the build has no Google OAuth client configured.
    required bool isConfigured,
    required bool isEnabled,

    /// Google account the backups go to (for display).
    String? accountEmail,
    DateTime? lastSuccessAt,

    /// Vault changed since the last successful upload.
    required bool hasPendingChanges,
  }) = _BackupStatus;
}
