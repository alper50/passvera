part of 'lock_bloc.dart';

@immutable
abstract class LockEvent {
  const LockEvent();

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

class _CheckPinStatus extends LockEvent {
  const _CheckPinStatus();
}

class _RefreshLockout extends LockEvent {
  const _RefreshLockout();
}

class _VerifyPin extends LockEvent {
  const _VerifyPin({required this.pin});
  final String pin;
}

class _SetPin extends LockEvent {
  const _SetPin({required this.pin, required this.confirmPin});
  final String pin;
  final String confirmPin;
}

class _UpdatePin extends LockEvent {
  const _UpdatePin({
    required this.currentPin,
    required this.newPin,
    required this.confirmNewPin,
  });
  final String currentPin;
  final String newPin;
  final String confirmNewPin;
}

class _RemovePin extends LockEvent {
  const _RemovePin({required this.currentPin});
  final String currentPin;
}

class _ClearMessages extends LockEvent {
  const _ClearMessages();
}
