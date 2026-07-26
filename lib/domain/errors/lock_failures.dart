import 'package:flutter/foundation.dart';

@immutable
abstract class LockFailure {
  const LockFailure();

  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() wrongPin,
    required T Function() invalidPin,
    required T Function() pinAlreadySet,
    required T Function() pinNotSet,
    required T Function() pinMismatch,
    required T Function(int remainingSeconds) lockedOut,
  });

  const factory LockFailure.unexpected(dynamic e) = _Unexpected;
  const factory LockFailure.wrongPin() = _WrongPin;
  const factory LockFailure.invalidPin() = _InvalidPin;
  const factory LockFailure.pinAlreadySet() = _PinAlreadySet;
  const factory LockFailure.pinNotSet() = _PinNotSet;
  const factory LockFailure.pinMismatch() = _PinMismatch;
  const factory LockFailure.lockedOut({required int remainingSeconds}) =
      _LockedOut;
}

class _Unexpected extends LockFailure {
  const _Unexpected(this.e);
  final dynamic e;

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() wrongPin,
    required T Function() invalidPin,
    required T Function() pinAlreadySet,
    required T Function() pinNotSet,
    required T Function() pinMismatch,
    required T Function(int remainingSeconds) lockedOut,
  }) =>
      unexpected(e);
}

class _WrongPin extends LockFailure {
  const _WrongPin();

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() wrongPin,
    required T Function() invalidPin,
    required T Function() pinAlreadySet,
    required T Function() pinNotSet,
    required T Function() pinMismatch,
    required T Function(int remainingSeconds) lockedOut,
  }) =>
      wrongPin();
}

class _InvalidPin extends LockFailure {
  const _InvalidPin();

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() wrongPin,
    required T Function() invalidPin,
    required T Function() pinAlreadySet,
    required T Function() pinNotSet,
    required T Function() pinMismatch,
    required T Function(int remainingSeconds) lockedOut,
  }) =>
      invalidPin();
}

class _PinAlreadySet extends LockFailure {
  const _PinAlreadySet();

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() wrongPin,
    required T Function() invalidPin,
    required T Function() pinAlreadySet,
    required T Function() pinNotSet,
    required T Function() pinMismatch,
    required T Function(int remainingSeconds) lockedOut,
  }) =>
      pinAlreadySet();
}

class _PinNotSet extends LockFailure {
  const _PinNotSet();

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() wrongPin,
    required T Function() invalidPin,
    required T Function() pinAlreadySet,
    required T Function() pinNotSet,
    required T Function() pinMismatch,
    required T Function(int remainingSeconds) lockedOut,
  }) =>
      pinNotSet();
}

class _PinMismatch extends LockFailure {
  const _PinMismatch();

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() wrongPin,
    required T Function() invalidPin,
    required T Function() pinAlreadySet,
    required T Function() pinNotSet,
    required T Function() pinMismatch,
    required T Function(int remainingSeconds) lockedOut,
  }) =>
      pinMismatch();
}

class _LockedOut extends LockFailure {
  const _LockedOut({required this.remainingSeconds});
  final int remainingSeconds;

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() wrongPin,
    required T Function() invalidPin,
    required T Function() pinAlreadySet,
    required T Function() pinNotSet,
    required T Function() pinMismatch,
    required T Function(int remainingSeconds) lockedOut,
  }) =>
      lockedOut(remainingSeconds);
}
