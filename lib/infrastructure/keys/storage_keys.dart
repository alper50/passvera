import 'package:passvera/domain/otp_auth_parser.dart';

/// Secure storage key layout (schema 2).
///
/// Every key is namespaced so a user's entry name can never collide with app
/// metadata (PIN hash, backup key, ...):
/// - `pw:<name>`   password entries
/// - `totp:<id>`   authenticator entries
/// - `meta:<name>` app metadata
abstract final class StorageKeys {
  static const String passwordPrefix = 'pw:';
  static const String metaPrefix = 'meta:';
  static const String totpPrefix = OtpAuthParser.storagePrefix;

  static String password(String name) => '$passwordPrefix$name';

  static const String onboard = '${metaPrefix}onboard';
  static const String onboardCompletedValue = 'true';

  static const String pinHash = '${metaPrefix}app_pin_hash';
  static const String pinSalt = '${metaPrefix}app_pin_salt';
  static const String pinAttempts = '${metaPrefix}app_pin_attempts';
  static const String pinLockoutUntil = '${metaPrefix}app_pin_lockout_until';

  /// Drive backup (see BackupService). Present key = backup enabled.
  static const String backupRecoveryKey = '${metaPrefix}backup_recovery_key';
  static const String backupAccount = '${metaPrefix}backup_account';
  static const String backupLastSuccess = '${metaPrefix}backup_last_success';

  /// Token of the latest unsaved vault change; cleared by an upload that
  /// started after it.
  static const String backupPending = '${metaPrefix}backup_pending';

  /// Written last by the schema-2 migration; its presence means done.
  static const String schema = '${metaPrefix}storage_schema';
  static const String currentSchema = '2';

  /// Snapshot of the legacy entries while the migration is in progress.
  static const String migrationJournal = '${metaPrefix}storage_migration';
}
