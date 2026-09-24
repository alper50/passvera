part of 'lock_bloc.dart';

@freezed
sealed class LockEvent with _$LockEvent {
  const factory LockEvent.checkPinStatus() = _CheckPinStatus;
  const factory LockEvent.refreshLockout() = _RefreshLockout;
  const factory LockEvent.verifyPin({required String pin}) = _VerifyPin;
  const factory LockEvent.setPin({
    required String pin,
    required String confirmPin,
  }) = _SetPin;
  const factory LockEvent.updatePin({
    required String currentPin,
    required String newPin,
    required String confirmNewPin,
  }) = _UpdatePin;
  const factory LockEvent.removePin({required String currentPin}) = _RemovePin;
  const factory LockEvent.clearMessages() = _ClearMessages;
}
