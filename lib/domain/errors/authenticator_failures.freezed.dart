// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticator_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticatorFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() invalidQr,
    required TResult Function() unsupportedType,
    required TResult Function() keyAlreadyUsed,
    required TResult Function() emptySecret,
    required TResult Function() permissionDenied,
    required TResult Function() mismatchedBatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? invalidQr,
    TResult? Function()? unsupportedType,
    TResult? Function()? keyAlreadyUsed,
    TResult? Function()? emptySecret,
    TResult? Function()? permissionDenied,
    TResult? Function()? mismatchedBatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? invalidQr,
    TResult Function()? unsupportedType,
    TResult Function()? keyAlreadyUsed,
    TResult Function()? emptySecret,
    TResult Function()? permissionDenied,
    TResult Function()? mismatchedBatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidQr value) invalidQr,
    required TResult Function(_UnsupportedType value) unsupportedType,
    required TResult Function(_KeyAlreadyUsed value) keyAlreadyUsed,
    required TResult Function(_EmptySecret value) emptySecret,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_MismatchedBatch value) mismatchedBatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InvalidQr value)? invalidQr,
    TResult? Function(_UnsupportedType value)? unsupportedType,
    TResult? Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult? Function(_EmptySecret value)? emptySecret,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_MismatchedBatch value)? mismatchedBatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidQr value)? invalidQr,
    TResult Function(_UnsupportedType value)? unsupportedType,
    TResult Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult Function(_EmptySecret value)? emptySecret,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_MismatchedBatch value)? mismatchedBatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatorFailureCopyWith<$Res> {
  factory $AuthenticatorFailureCopyWith(AuthenticatorFailure value,
          $Res Function(AuthenticatorFailure) then) =
      _$AuthenticatorFailureCopyWithImpl<$Res, AuthenticatorFailure>;
}

/// @nodoc
class _$AuthenticatorFailureCopyWithImpl<$Res,
        $Val extends AuthenticatorFailure>
    implements $AuthenticatorFailureCopyWith<$Res> {
  _$AuthenticatorFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$AuthenticatorFailureCopyWithImpl<$Res, _$_Unexpected>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_Unexpected(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'AuthenticatorFailure.unexpected(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unexpected &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      __$$_UnexpectedCopyWithImpl<_$_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() invalidQr,
    required TResult Function() unsupportedType,
    required TResult Function() keyAlreadyUsed,
    required TResult Function() emptySecret,
    required TResult Function() permissionDenied,
    required TResult Function() mismatchedBatch,
  }) {
    return unexpected(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? invalidQr,
    TResult? Function()? unsupportedType,
    TResult? Function()? keyAlreadyUsed,
    TResult? Function()? emptySecret,
    TResult? Function()? permissionDenied,
    TResult? Function()? mismatchedBatch,
  }) {
    return unexpected?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? invalidQr,
    TResult Function()? unsupportedType,
    TResult Function()? keyAlreadyUsed,
    TResult Function()? emptySecret,
    TResult Function()? permissionDenied,
    TResult Function()? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidQr value) invalidQr,
    required TResult Function(_UnsupportedType value) unsupportedType,
    required TResult Function(_KeyAlreadyUsed value) keyAlreadyUsed,
    required TResult Function(_EmptySecret value) emptySecret,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_MismatchedBatch value) mismatchedBatch,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InvalidQr value)? invalidQr,
    TResult? Function(_UnsupportedType value)? unsupportedType,
    TResult? Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult? Function(_EmptySecret value)? emptySecret,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_MismatchedBatch value)? mismatchedBatch,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidQr value)? invalidQr,
    TResult Function(_UnsupportedType value)? unsupportedType,
    TResult Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult Function(_EmptySecret value)? emptySecret,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_MismatchedBatch value)? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements AuthenticatorFailure {
  const factory _Unexpected(final dynamic e) = _$_Unexpected;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidQrCopyWith<$Res> {
  factory _$$_InvalidQrCopyWith(
          _$_InvalidQr value, $Res Function(_$_InvalidQr) then) =
      __$$_InvalidQrCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidQrCopyWithImpl<$Res>
    extends _$AuthenticatorFailureCopyWithImpl<$Res, _$_InvalidQr>
    implements _$$_InvalidQrCopyWith<$Res> {
  __$$_InvalidQrCopyWithImpl(
      _$_InvalidQr _value, $Res Function(_$_InvalidQr) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidQr implements _InvalidQr {
  const _$_InvalidQr();

  @override
  String toString() {
    return 'AuthenticatorFailure.invalidQr()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidQr);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() invalidQr,
    required TResult Function() unsupportedType,
    required TResult Function() keyAlreadyUsed,
    required TResult Function() emptySecret,
    required TResult Function() permissionDenied,
    required TResult Function() mismatchedBatch,
  }) {
    return invalidQr();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? invalidQr,
    TResult? Function()? unsupportedType,
    TResult? Function()? keyAlreadyUsed,
    TResult? Function()? emptySecret,
    TResult? Function()? permissionDenied,
    TResult? Function()? mismatchedBatch,
  }) {
    return invalidQr?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? invalidQr,
    TResult Function()? unsupportedType,
    TResult Function()? keyAlreadyUsed,
    TResult Function()? emptySecret,
    TResult Function()? permissionDenied,
    TResult Function()? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (invalidQr != null) {
      return invalidQr();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidQr value) invalidQr,
    required TResult Function(_UnsupportedType value) unsupportedType,
    required TResult Function(_KeyAlreadyUsed value) keyAlreadyUsed,
    required TResult Function(_EmptySecret value) emptySecret,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_MismatchedBatch value) mismatchedBatch,
  }) {
    return invalidQr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InvalidQr value)? invalidQr,
    TResult? Function(_UnsupportedType value)? unsupportedType,
    TResult? Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult? Function(_EmptySecret value)? emptySecret,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_MismatchedBatch value)? mismatchedBatch,
  }) {
    return invalidQr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidQr value)? invalidQr,
    TResult Function(_UnsupportedType value)? unsupportedType,
    TResult Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult Function(_EmptySecret value)? emptySecret,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_MismatchedBatch value)? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (invalidQr != null) {
      return invalidQr(this);
    }
    return orElse();
  }
}

abstract class _InvalidQr implements AuthenticatorFailure {
  const factory _InvalidQr() = _$_InvalidQr;
}

/// @nodoc
abstract class _$$_UnsupportedTypeCopyWith<$Res> {
  factory _$$_UnsupportedTypeCopyWith(
          _$_UnsupportedType value, $Res Function(_$_UnsupportedType) then) =
      __$$_UnsupportedTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnsupportedTypeCopyWithImpl<$Res>
    extends _$AuthenticatorFailureCopyWithImpl<$Res, _$_UnsupportedType>
    implements _$$_UnsupportedTypeCopyWith<$Res> {
  __$$_UnsupportedTypeCopyWithImpl(
      _$_UnsupportedType _value, $Res Function(_$_UnsupportedType) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnsupportedType implements _UnsupportedType {
  const _$_UnsupportedType();

  @override
  String toString() {
    return 'AuthenticatorFailure.unsupportedType()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnsupportedType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() invalidQr,
    required TResult Function() unsupportedType,
    required TResult Function() keyAlreadyUsed,
    required TResult Function() emptySecret,
    required TResult Function() permissionDenied,
    required TResult Function() mismatchedBatch,
  }) {
    return unsupportedType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? invalidQr,
    TResult? Function()? unsupportedType,
    TResult? Function()? keyAlreadyUsed,
    TResult? Function()? emptySecret,
    TResult? Function()? permissionDenied,
    TResult? Function()? mismatchedBatch,
  }) {
    return unsupportedType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? invalidQr,
    TResult Function()? unsupportedType,
    TResult Function()? keyAlreadyUsed,
    TResult Function()? emptySecret,
    TResult Function()? permissionDenied,
    TResult Function()? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (unsupportedType != null) {
      return unsupportedType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidQr value) invalidQr,
    required TResult Function(_UnsupportedType value) unsupportedType,
    required TResult Function(_KeyAlreadyUsed value) keyAlreadyUsed,
    required TResult Function(_EmptySecret value) emptySecret,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_MismatchedBatch value) mismatchedBatch,
  }) {
    return unsupportedType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InvalidQr value)? invalidQr,
    TResult? Function(_UnsupportedType value)? unsupportedType,
    TResult? Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult? Function(_EmptySecret value)? emptySecret,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_MismatchedBatch value)? mismatchedBatch,
  }) {
    return unsupportedType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidQr value)? invalidQr,
    TResult Function(_UnsupportedType value)? unsupportedType,
    TResult Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult Function(_EmptySecret value)? emptySecret,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_MismatchedBatch value)? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (unsupportedType != null) {
      return unsupportedType(this);
    }
    return orElse();
  }
}

abstract class _UnsupportedType implements AuthenticatorFailure {
  const factory _UnsupportedType() = _$_UnsupportedType;
}

/// @nodoc
abstract class _$$_KeyAlreadyUsedCopyWith<$Res> {
  factory _$$_KeyAlreadyUsedCopyWith(
          _$_KeyAlreadyUsed value, $Res Function(_$_KeyAlreadyUsed) then) =
      __$$_KeyAlreadyUsedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_KeyAlreadyUsedCopyWithImpl<$Res>
    extends _$AuthenticatorFailureCopyWithImpl<$Res, _$_KeyAlreadyUsed>
    implements _$$_KeyAlreadyUsedCopyWith<$Res> {
  __$$_KeyAlreadyUsedCopyWithImpl(
      _$_KeyAlreadyUsed _value, $Res Function(_$_KeyAlreadyUsed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_KeyAlreadyUsed implements _KeyAlreadyUsed {
  const _$_KeyAlreadyUsed();

  @override
  String toString() {
    return 'AuthenticatorFailure.keyAlreadyUsed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_KeyAlreadyUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() invalidQr,
    required TResult Function() unsupportedType,
    required TResult Function() keyAlreadyUsed,
    required TResult Function() emptySecret,
    required TResult Function() permissionDenied,
    required TResult Function() mismatchedBatch,
  }) {
    return keyAlreadyUsed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? invalidQr,
    TResult? Function()? unsupportedType,
    TResult? Function()? keyAlreadyUsed,
    TResult? Function()? emptySecret,
    TResult? Function()? permissionDenied,
    TResult? Function()? mismatchedBatch,
  }) {
    return keyAlreadyUsed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? invalidQr,
    TResult Function()? unsupportedType,
    TResult Function()? keyAlreadyUsed,
    TResult Function()? emptySecret,
    TResult Function()? permissionDenied,
    TResult Function()? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (keyAlreadyUsed != null) {
      return keyAlreadyUsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidQr value) invalidQr,
    required TResult Function(_UnsupportedType value) unsupportedType,
    required TResult Function(_KeyAlreadyUsed value) keyAlreadyUsed,
    required TResult Function(_EmptySecret value) emptySecret,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_MismatchedBatch value) mismatchedBatch,
  }) {
    return keyAlreadyUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InvalidQr value)? invalidQr,
    TResult? Function(_UnsupportedType value)? unsupportedType,
    TResult? Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult? Function(_EmptySecret value)? emptySecret,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_MismatchedBatch value)? mismatchedBatch,
  }) {
    return keyAlreadyUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidQr value)? invalidQr,
    TResult Function(_UnsupportedType value)? unsupportedType,
    TResult Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult Function(_EmptySecret value)? emptySecret,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_MismatchedBatch value)? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (keyAlreadyUsed != null) {
      return keyAlreadyUsed(this);
    }
    return orElse();
  }
}

abstract class _KeyAlreadyUsed implements AuthenticatorFailure {
  const factory _KeyAlreadyUsed() = _$_KeyAlreadyUsed;
}

/// @nodoc
abstract class _$$_EmptySecretCopyWith<$Res> {
  factory _$$_EmptySecretCopyWith(
          _$_EmptySecret value, $Res Function(_$_EmptySecret) then) =
      __$$_EmptySecretCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptySecretCopyWithImpl<$Res>
    extends _$AuthenticatorFailureCopyWithImpl<$Res, _$_EmptySecret>
    implements _$$_EmptySecretCopyWith<$Res> {
  __$$_EmptySecretCopyWithImpl(
      _$_EmptySecret _value, $Res Function(_$_EmptySecret) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EmptySecret implements _EmptySecret {
  const _$_EmptySecret();

  @override
  String toString() {
    return 'AuthenticatorFailure.emptySecret()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmptySecret);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() invalidQr,
    required TResult Function() unsupportedType,
    required TResult Function() keyAlreadyUsed,
    required TResult Function() emptySecret,
    required TResult Function() permissionDenied,
    required TResult Function() mismatchedBatch,
  }) {
    return emptySecret();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? invalidQr,
    TResult? Function()? unsupportedType,
    TResult? Function()? keyAlreadyUsed,
    TResult? Function()? emptySecret,
    TResult? Function()? permissionDenied,
    TResult? Function()? mismatchedBatch,
  }) {
    return emptySecret?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? invalidQr,
    TResult Function()? unsupportedType,
    TResult Function()? keyAlreadyUsed,
    TResult Function()? emptySecret,
    TResult Function()? permissionDenied,
    TResult Function()? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (emptySecret != null) {
      return emptySecret();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidQr value) invalidQr,
    required TResult Function(_UnsupportedType value) unsupportedType,
    required TResult Function(_KeyAlreadyUsed value) keyAlreadyUsed,
    required TResult Function(_EmptySecret value) emptySecret,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_MismatchedBatch value) mismatchedBatch,
  }) {
    return emptySecret(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InvalidQr value)? invalidQr,
    TResult? Function(_UnsupportedType value)? unsupportedType,
    TResult? Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult? Function(_EmptySecret value)? emptySecret,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_MismatchedBatch value)? mismatchedBatch,
  }) {
    return emptySecret?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidQr value)? invalidQr,
    TResult Function(_UnsupportedType value)? unsupportedType,
    TResult Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult Function(_EmptySecret value)? emptySecret,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_MismatchedBatch value)? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (emptySecret != null) {
      return emptySecret(this);
    }
    return orElse();
  }
}

abstract class _EmptySecret implements AuthenticatorFailure {
  const factory _EmptySecret() = _$_EmptySecret;
}

/// @nodoc
abstract class _$$_PermissionDeniedCopyWith<$Res> {
  factory _$$_PermissionDeniedCopyWith(
          _$_PermissionDenied value, $Res Function(_$_PermissionDenied) then) =
      __$$_PermissionDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PermissionDeniedCopyWithImpl<$Res>
    extends _$AuthenticatorFailureCopyWithImpl<$Res, _$_PermissionDenied>
    implements _$$_PermissionDeniedCopyWith<$Res> {
  __$$_PermissionDeniedCopyWithImpl(
      _$_PermissionDenied _value, $Res Function(_$_PermissionDenied) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PermissionDenied implements _PermissionDenied {
  const _$_PermissionDenied();

  @override
  String toString() {
    return 'AuthenticatorFailure.permissionDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PermissionDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() invalidQr,
    required TResult Function() unsupportedType,
    required TResult Function() keyAlreadyUsed,
    required TResult Function() emptySecret,
    required TResult Function() permissionDenied,
    required TResult Function() mismatchedBatch,
  }) {
    return permissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? invalidQr,
    TResult? Function()? unsupportedType,
    TResult? Function()? keyAlreadyUsed,
    TResult? Function()? emptySecret,
    TResult? Function()? permissionDenied,
    TResult? Function()? mismatchedBatch,
  }) {
    return permissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? invalidQr,
    TResult Function()? unsupportedType,
    TResult Function()? keyAlreadyUsed,
    TResult Function()? emptySecret,
    TResult Function()? permissionDenied,
    TResult Function()? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidQr value) invalidQr,
    required TResult Function(_UnsupportedType value) unsupportedType,
    required TResult Function(_KeyAlreadyUsed value) keyAlreadyUsed,
    required TResult Function(_EmptySecret value) emptySecret,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_MismatchedBatch value) mismatchedBatch,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InvalidQr value)? invalidQr,
    TResult? Function(_UnsupportedType value)? unsupportedType,
    TResult? Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult? Function(_EmptySecret value)? emptySecret,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_MismatchedBatch value)? mismatchedBatch,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidQr value)? invalidQr,
    TResult Function(_UnsupportedType value)? unsupportedType,
    TResult Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult Function(_EmptySecret value)? emptySecret,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_MismatchedBatch value)? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionDenied implements AuthenticatorFailure {
  const factory _PermissionDenied() = _$_PermissionDenied;
}

/// @nodoc
abstract class _$$_MismatchedBatchCopyWith<$Res> {
  factory _$$_MismatchedBatchCopyWith(
          _$_MismatchedBatch value, $Res Function(_$_MismatchedBatch) then) =
      __$$_MismatchedBatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MismatchedBatchCopyWithImpl<$Res>
    extends _$AuthenticatorFailureCopyWithImpl<$Res, _$_MismatchedBatch>
    implements _$$_MismatchedBatchCopyWith<$Res> {
  __$$_MismatchedBatchCopyWithImpl(
      _$_MismatchedBatch _value, $Res Function(_$_MismatchedBatch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MismatchedBatch implements _MismatchedBatch {
  const _$_MismatchedBatch();

  @override
  String toString() {
    return 'AuthenticatorFailure.mismatchedBatch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MismatchedBatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() invalidQr,
    required TResult Function() unsupportedType,
    required TResult Function() keyAlreadyUsed,
    required TResult Function() emptySecret,
    required TResult Function() permissionDenied,
    required TResult Function() mismatchedBatch,
  }) {
    return mismatchedBatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? invalidQr,
    TResult? Function()? unsupportedType,
    TResult? Function()? keyAlreadyUsed,
    TResult? Function()? emptySecret,
    TResult? Function()? permissionDenied,
    TResult? Function()? mismatchedBatch,
  }) {
    return mismatchedBatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? invalidQr,
    TResult Function()? unsupportedType,
    TResult Function()? keyAlreadyUsed,
    TResult Function()? emptySecret,
    TResult Function()? permissionDenied,
    TResult Function()? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (mismatchedBatch != null) {
      return mismatchedBatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidQr value) invalidQr,
    required TResult Function(_UnsupportedType value) unsupportedType,
    required TResult Function(_KeyAlreadyUsed value) keyAlreadyUsed,
    required TResult Function(_EmptySecret value) emptySecret,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_MismatchedBatch value) mismatchedBatch,
  }) {
    return mismatchedBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InvalidQr value)? invalidQr,
    TResult? Function(_UnsupportedType value)? unsupportedType,
    TResult? Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult? Function(_EmptySecret value)? emptySecret,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_MismatchedBatch value)? mismatchedBatch,
  }) {
    return mismatchedBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidQr value)? invalidQr,
    TResult Function(_UnsupportedType value)? unsupportedType,
    TResult Function(_KeyAlreadyUsed value)? keyAlreadyUsed,
    TResult Function(_EmptySecret value)? emptySecret,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_MismatchedBatch value)? mismatchedBatch,
    required TResult orElse(),
  }) {
    if (mismatchedBatch != null) {
      return mismatchedBatch(this);
    }
    return orElse();
  }
}

abstract class _MismatchedBatch implements AuthenticatorFailure {
  const factory _MismatchedBatch() = _$_MismatchedBatch;
}
