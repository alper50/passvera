import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/authenticator_entry.dart';

part 'backup_payload.freezed.dart';

/// What a backup contains: the vault entries only. Device-bound state (PIN
/// hash, lockout counters, onboarding flag, the recovery key itself) is
/// never part of a backup.
@freezed
abstract class BackupPayload with _$BackupPayload {
  const factory BackupPayload({
    required DateTime createdAt,
    required List<ApplicationModel> passwords,
    required List<AuthenticatorEntry> authenticators,
  }) = _BackupPayload;
}
