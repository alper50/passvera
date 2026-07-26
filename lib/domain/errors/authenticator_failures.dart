import 'package:flutter/foundation.dart';

@immutable
abstract class AuthenticatorFailure {
  const AuthenticatorFailure();

  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() invalidQr,
    required T Function() unsupportedType,
    required T Function() keyAlreadyUsed,
    required T Function() emptySecret,
    required T Function() permissionDenied,
  });

  const factory AuthenticatorFailure.unexpected(dynamic e) = _Unexpected;
  const factory AuthenticatorFailure.invalidQr() = _InvalidQr;
  const factory AuthenticatorFailure.unsupportedType() = _UnsupportedType;
  const factory AuthenticatorFailure.keyAlreadyUsed() = _KeyAlreadyUsed;
  const factory AuthenticatorFailure.emptySecret() = _EmptySecret;
  const factory AuthenticatorFailure.permissionDenied() = _PermissionDenied;
}

class _Unexpected extends AuthenticatorFailure {
  const _Unexpected(this.e);
  final dynamic e;

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() invalidQr,
    required T Function() unsupportedType,
    required T Function() keyAlreadyUsed,
    required T Function() emptySecret,
    required T Function() permissionDenied,
  }) =>
      unexpected(e);
}

class _InvalidQr extends AuthenticatorFailure {
  const _InvalidQr();

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() invalidQr,
    required T Function() unsupportedType,
    required T Function() keyAlreadyUsed,
    required T Function() emptySecret,
    required T Function() permissionDenied,
  }) =>
      invalidQr();
}

class _UnsupportedType extends AuthenticatorFailure {
  const _UnsupportedType();

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() invalidQr,
    required T Function() unsupportedType,
    required T Function() keyAlreadyUsed,
    required T Function() emptySecret,
    required T Function() permissionDenied,
  }) =>
      unsupportedType();
}

class _KeyAlreadyUsed extends AuthenticatorFailure {
  const _KeyAlreadyUsed();

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() invalidQr,
    required T Function() unsupportedType,
    required T Function() keyAlreadyUsed,
    required T Function() emptySecret,
    required T Function() permissionDenied,
  }) =>
      keyAlreadyUsed();
}

class _EmptySecret extends AuthenticatorFailure {
  const _EmptySecret();

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() invalidQr,
    required T Function() unsupportedType,
    required T Function() keyAlreadyUsed,
    required T Function() emptySecret,
    required T Function() permissionDenied,
  }) =>
      emptySecret();
}

class _PermissionDenied extends AuthenticatorFailure {
  const _PermissionDenied();

  @override
  T map<T>({
    required T Function(dynamic e) unexpected,
    required T Function() invalidQr,
    required T Function() unsupportedType,
    required T Function() keyAlreadyUsed,
    required T Function() emptySecret,
    required T Function() permissionDenied,
  }) =>
      permissionDenied();
}
