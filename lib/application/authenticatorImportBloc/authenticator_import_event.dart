part of 'authenticator_import_bloc.dart';

@freezed
class AuthenticatorImportEvent with _$AuthenticatorImportEvent {
  /// Loads the ids already in the vault so duplicates can be marked.
  const factory AuthenticatorImportEvent.started() = _Started;

  /// A scanned `otpauth-migration://` QR (one batch of the export).
  const factory AuthenticatorImportEvent.qrScanned(String raw) = _QrScanned;

  const factory AuthenticatorImportEvent.selectionToggled(String id) =
      _SelectionToggled;

  const factory AuthenticatorImportEvent.importConfirmed() = _ImportConfirmed;
}
