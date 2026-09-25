// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticator_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthenticatorFailure {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticatorFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorFailure()';
  }
}

/// @nodoc
class $AuthenticatorFailureCopyWith<$Res> {
  $AuthenticatorFailureCopyWith(
      AuthenticatorFailure _, $Res Function(AuthenticatorFailure) __);
}

/// Adds pattern-matching-related methods to [AuthenticatorFailure].
extension AuthenticatorFailurePatterns on AuthenticatorFailure {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that);
      case _InvalidQr() when invalidQr != null:
        return invalidQr(_that);
      case _UnsupportedType() when unsupportedType != null:
        return unsupportedType(_that);
      case _KeyAlreadyUsed() when keyAlreadyUsed != null:
        return keyAlreadyUsed(_that);
      case _EmptySecret() when emptySecret != null:
        return emptySecret(_that);
      case _PermissionDenied() when permissionDenied != null:
        return permissionDenied(_that);
      case _MismatchedBatch() when mismatchedBatch != null:
        return mismatchedBatch(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _Unexpected():
        return unexpected(_that);
      case _InvalidQr():
        return invalidQr(_that);
      case _UnsupportedType():
        return unsupportedType(_that);
      case _KeyAlreadyUsed():
        return keyAlreadyUsed(_that);
      case _EmptySecret():
        return emptySecret(_that);
      case _PermissionDenied():
        return permissionDenied(_that);
      case _MismatchedBatch():
        return mismatchedBatch(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that);
      case _InvalidQr() when invalidQr != null:
        return invalidQr(_that);
      case _UnsupportedType() when unsupportedType != null:
        return unsupportedType(_that);
      case _KeyAlreadyUsed() when keyAlreadyUsed != null:
        return keyAlreadyUsed(_that);
      case _EmptySecret() when emptySecret != null:
        return emptySecret(_that);
      case _PermissionDenied() when permissionDenied != null:
        return permissionDenied(_that);
      case _MismatchedBatch() when mismatchedBatch != null:
        return mismatchedBatch(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that.e);
      case _InvalidQr() when invalidQr != null:
        return invalidQr();
      case _UnsupportedType() when unsupportedType != null:
        return unsupportedType();
      case _KeyAlreadyUsed() when keyAlreadyUsed != null:
        return keyAlreadyUsed();
      case _EmptySecret() when emptySecret != null:
        return emptySecret();
      case _PermissionDenied() when permissionDenied != null:
        return permissionDenied();
      case _MismatchedBatch() when mismatchedBatch != null:
        return mismatchedBatch();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _Unexpected():
        return unexpected(_that.e);
      case _InvalidQr():
        return invalidQr();
      case _UnsupportedType():
        return unsupportedType();
      case _KeyAlreadyUsed():
        return keyAlreadyUsed();
      case _EmptySecret():
        return emptySecret();
      case _PermissionDenied():
        return permissionDenied();
      case _MismatchedBatch():
        return mismatchedBatch();
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that.e);
      case _InvalidQr() when invalidQr != null:
        return invalidQr();
      case _UnsupportedType() when unsupportedType != null:
        return unsupportedType();
      case _KeyAlreadyUsed() when keyAlreadyUsed != null:
        return keyAlreadyUsed();
      case _EmptySecret() when emptySecret != null:
        return emptySecret();
      case _PermissionDenied() when permissionDenied != null:
        return permissionDenied();
      case _MismatchedBatch() when mismatchedBatch != null:
        return mismatchedBatch();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Unexpected implements AuthenticatorFailure {
  const _Unexpected(this.e);

  final dynamic e;

  /// Create a copy of AuthenticatorFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      __$UnexpectedCopyWithImpl<_Unexpected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unexpected &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @override
  String toString() {
    return 'AuthenticatorFailure.unexpected(e: $e)';
  }
}

/// @nodoc
abstract mixin class _$UnexpectedCopyWith<$Res>
    implements $AuthenticatorFailureCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) _then) =
      __$UnexpectedCopyWithImpl;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(this._self, this._then);

  final _Unexpected _self;
  final $Res Function(_Unexpected) _then;

  /// Create a copy of AuthenticatorFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_Unexpected(
      freezed == e
          ? _self.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _InvalidQr implements AuthenticatorFailure {
  const _InvalidQr();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InvalidQr);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorFailure.invalidQr()';
  }
}

/// @nodoc

class _UnsupportedType implements AuthenticatorFailure {
  const _UnsupportedType();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnsupportedType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorFailure.unsupportedType()';
  }
}

/// @nodoc

class _KeyAlreadyUsed implements AuthenticatorFailure {
  const _KeyAlreadyUsed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _KeyAlreadyUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorFailure.keyAlreadyUsed()';
  }
}

/// @nodoc

class _EmptySecret implements AuthenticatorFailure {
  const _EmptySecret();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmptySecret);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorFailure.emptySecret()';
  }
}

/// @nodoc

class _PermissionDenied implements AuthenticatorFailure {
  const _PermissionDenied();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PermissionDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorFailure.permissionDenied()';
  }
}

/// @nodoc

class _MismatchedBatch implements AuthenticatorFailure {
  const _MismatchedBatch();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MismatchedBatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorFailure.mismatchedBatch()';
  }
}

// dart format on
