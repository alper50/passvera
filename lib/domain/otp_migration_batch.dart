import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:passvera/domain/authenticator_entry.dart';

part 'otp_migration_batch.freezed.dart';

/// One QR code of a Google Authenticator export. Large exports are split
/// into [batchSize] codes that share the same [batchId].
@freezed
class OtpMigrationBatch with _$OtpMigrationBatch {
  const factory OtpMigrationBatch({
    /// Importable TOTP accounts, ids already in storage-key form.
    required List<AuthenticatorEntry> entries,

    /// Accounts left out: counter-based (HOTP), MD5, or missing a secret.
    required int skippedCount,
    required int batchIndex,
    required int batchSize,
    required int batchId,
  }) = _OtpMigrationBatch;
}
