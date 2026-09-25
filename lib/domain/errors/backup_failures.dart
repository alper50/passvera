import 'package:freezed_annotation/freezed_annotation.dart';

part 'backup_failures.freezed.dart';

@freezed
sealed class BackupFailure with _$BackupFailure {
  const factory BackupFailure.unexpected(dynamic e) = _Unexpected;

  /// The build has no Google OAuth client configured (see google_config).
  const factory BackupFailure.notConfigured() = _NotConfigured;

  /// The user dismissed the Google account or permission prompt.
  const factory BackupFailure.cancelled() = _Cancelled;

  /// Drive access is not (or no longer) granted; needs the interactive flow.
  const factory BackupFailure.authorizationRequired() = _AuthorizationRequired;

  const factory BackupFailure.network() = _Network;

  /// Words that are not a valid 12-word recovery key (typo, checksum).
  const factory BackupFailure.invalidRecoveryKey() = _InvalidRecoveryKey;

  /// A valid recovery key, but not the one this backup was made with.
  const factory BackupFailure.wrongRecoveryKey() = _WrongRecoveryKey;

  /// The file is damaged or was modified (authentication failed).
  const factory BackupFailure.corruptedBackup() = _CorruptedBackup;

  /// Made by a newer app version with a format this build cannot read.
  const factory BackupFailure.unsupportedVersion() = _UnsupportedVersion;

  const factory BackupFailure.noBackups() = _NoBackups;

  /// Backup is not enabled on this device.
  const factory BackupFailure.notEnabled() = _NotEnabled;
}
