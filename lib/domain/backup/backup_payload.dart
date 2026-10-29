import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/authenticator_entry.dart';

part 'backup_payload.freezed.dart';

/// What a backup contains: the vault entries and how the user arranged their
/// tags. Device-bound state (PIN hash, lockout counters, onboarding flag,
/// the recovery key itself) is never part of a backup.
@freezed
abstract class BackupPayload with _$BackupPayload {
  const factory BackupPayload({
    required DateTime createdAt,
    required List<ApplicationModel> passwords,
    required List<AuthenticatorEntry> authenticators,

    /// Saved tag order (see TagOrder); empty in backups made before it
    /// existed or when the user never reordered.
    @Default(<String>[]) List<String> tagOrder,
  }) = _BackupPayload;
}
