import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/domain/errors/backup_failures.dart';
import 'package:passvera/domain/errors/clipboard_failures.dart';
import 'package:passvera/domain/errors/lock_failures.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/lock_constants.dart';

/// User-facing texts for domain failures. Keep wording in one place.
extension StorageFailureMessage on StorageFailure {
  String get message => when(
        unexpected: (e) => e.toString(),
        keyAlreadyUsed: () => 'This key already used',
        insufficientPermission: () => 'Permission Denied',
        emptyKey: () => 'Parameters cannot be empty',
        modelNotValid: () => 'Model is not valid',
      );
}

extension LockFailureMessage on LockFailure {
  String get message => when(
        unexpected: (e) => e.toString(),
        wrongPin: () => 'Wrong PIN',
        invalidPin: () => 'PIN must be $kAppPinLength digits',
        pinAlreadySet: () => 'PIN already set',
        pinNotSet: () => 'PIN is not set',
        pinMismatch: () => 'PINs do not match',
        lockedOut: (seconds) => 'Too many attempts. Try again in ${seconds}s',
      );
}

extension AuthenticatorFailureMessage on AuthenticatorFailure {
  String get message => when(
        unexpected: (e) => e.toString(),
        invalidQr: () => 'Invalid authenticator QR',
        unsupportedType: () => 'Only TOTP QR codes are supported',
        keyAlreadyUsed: () => 'This account is already added',
        emptySecret: () => 'QR has no secret',
        permissionDenied: () => 'Camera permission denied',
        mismatchedBatch: () =>
            'This QR belongs to a different Google Authenticator export',
      );
}

extension ClipboardFailureMessage on ClipboardFailure {
  String get message => when(
        unexpected: (_) => 'Could not copy to clipboard',
      );
}

extension BackupFailureMessage on BackupFailure {
  String get message => when(
        unexpected: (_) => 'Something went wrong with the backup',
        notConfigured: () => 'Google Drive backup is not set up in this build',
        cancelled: () => 'Google sign-in was cancelled',
        authorizationRequired: () =>
            'Google Drive access expired. Connect your account again',
        network: () => 'No connection to Google Drive',
        invalidRecoveryKey: () =>
            'Those 12 words are not a valid recovery key. Check for typos',
        wrongRecoveryKey: () => 'This recovery key does not match the backup',
        corruptedBackup: () => 'The backup file is damaged',
        unsupportedVersion: () =>
            'This backup was made by a newer Passvera. Update the app',
        noBackups: () => 'No backups found in this Google account',
        notEnabled: () => 'Backup is turned off',
      );
}
