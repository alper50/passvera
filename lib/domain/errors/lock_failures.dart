import 'package:freezed_annotation/freezed_annotation.dart';

part 'lock_failures.freezed.dart';

@freezed
sealed class LockFailure with _$LockFailure {
  const factory LockFailure.unexpected(dynamic e) = _Unexpected;
  const factory LockFailure.wrongPin() = _WrongPin;
  const factory LockFailure.invalidPin() = _InvalidPin;
  const factory LockFailure.pinAlreadySet() = _PinAlreadySet;
  const factory LockFailure.pinNotSet() = _PinNotSet;
  const factory LockFailure.pinMismatch() = _PinMismatch;
  const factory LockFailure.lockedOut({required int remainingSeconds}) =
      _LockedOut;
}
