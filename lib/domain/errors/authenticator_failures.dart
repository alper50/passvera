import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticator_failures.freezed.dart';

@freezed
sealed class AuthenticatorFailure with _$AuthenticatorFailure {
  const factory AuthenticatorFailure.unexpected(dynamic e) = _Unexpected;
  const factory AuthenticatorFailure.invalidQr() = _InvalidQr;
  const factory AuthenticatorFailure.unsupportedType() = _UnsupportedType;
  const factory AuthenticatorFailure.keyAlreadyUsed() = _KeyAlreadyUsed;
  const factory AuthenticatorFailure.emptySecret() = _EmptySecret;
  const factory AuthenticatorFailure.permissionDenied() = _PermissionDenied;

  /// A Google Authenticator export QR from a different export than the ones
  /// already scanned.
  const factory AuthenticatorFailure.mismatchedBatch() = _MismatchedBatch;
}
