// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lock_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LockFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() wrongPin,
    required TResult Function() invalidPin,
    required TResult Function() pinAlreadySet,
    required TResult Function() pinNotSet,
    required TResult Function() pinMismatch,
    required TResult Function(int remainingSeconds) lockedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? wrongPin,
    TResult? Function()? invalidPin,
    TResult? Function()? pinAlreadySet,
    TResult? Function()? pinNotSet,
    TResult? Function()? pinMismatch,
    TResult? Function(int remainingSeconds)? lockedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? wrongPin,
    TResult Function()? invalidPin,
    TResult Function()? pinAlreadySet,
    TResult Function()? pinNotSet,
    TResult Function()? pinMismatch,
    TResult Function(int remainingSeconds)? lockedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_WrongPin value) wrongPin,
    required TResult Function(_InvalidPin value) invalidPin,
    required TResult Function(_PinAlreadySet value) pinAlreadySet,
    required TResult Function(_PinNotSet value) pinNotSet,
    required TResult Function(_PinMismatch value) pinMismatch,
    required TResult Function(_LockedOut value) lockedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_WrongPin value)? wrongPin,
    TResult? Function(_InvalidPin value)? invalidPin,
    TResult? Function(_PinAlreadySet value)? pinAlreadySet,
    TResult? Function(_PinNotSet value)? pinNotSet,
    TResult? Function(_PinMismatch value)? pinMismatch,
    TResult? Function(_LockedOut value)? lockedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_WrongPin value)? wrongPin,
    TResult Function(_InvalidPin value)? invalidPin,
    TResult Function(_PinAlreadySet value)? pinAlreadySet,
    TResult Function(_PinNotSet value)? pinNotSet,
    TResult Function(_PinMismatch value)? pinMismatch,
    TResult Function(_LockedOut value)? lockedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockFailureCopyWith<$Res> {
  factory $LockFailureCopyWith(
          LockFailure value, $Res Function(LockFailure) then) =
      _$LockFailureCopyWithImpl<$Res, LockFailure>;
}

/// @nodoc
class _$LockFailureCopyWithImpl<$Res, $Val extends LockFailure>
    implements $LockFailureCopyWith<$Res> {
  _$LockFailureCopyWithImpl(this._value, this._then);

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
    extends _$LockFailureCopyWithImpl<$Res, _$_Unexpected>
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
    return 'LockFailure.unexpected(e: $e)';
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
    required TResult Function() wrongPin,
    required TResult Function() invalidPin,
    required TResult Function() pinAlreadySet,
    required TResult Function() pinNotSet,
    required TResult Function() pinMismatch,
    required TResult Function(int remainingSeconds) lockedOut,
  }) {
    return unexpected(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? wrongPin,
    TResult? Function()? invalidPin,
    TResult? Function()? pinAlreadySet,
    TResult? Function()? pinNotSet,
    TResult? Function()? pinMismatch,
    TResult? Function(int remainingSeconds)? lockedOut,
  }) {
    return unexpected?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? wrongPin,
    TResult Function()? invalidPin,
    TResult Function()? pinAlreadySet,
    TResult Function()? pinNotSet,
    TResult Function()? pinMismatch,
    TResult Function(int remainingSeconds)? lockedOut,
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
    required TResult Function(_WrongPin value) wrongPin,
    required TResult Function(_InvalidPin value) invalidPin,
    required TResult Function(_PinAlreadySet value) pinAlreadySet,
    required TResult Function(_PinNotSet value) pinNotSet,
    required TResult Function(_PinMismatch value) pinMismatch,
    required TResult Function(_LockedOut value) lockedOut,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_WrongPin value)? wrongPin,
    TResult? Function(_InvalidPin value)? invalidPin,
    TResult? Function(_PinAlreadySet value)? pinAlreadySet,
    TResult? Function(_PinNotSet value)? pinNotSet,
    TResult? Function(_PinMismatch value)? pinMismatch,
    TResult? Function(_LockedOut value)? lockedOut,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_WrongPin value)? wrongPin,
    TResult Function(_InvalidPin value)? invalidPin,
    TResult Function(_PinAlreadySet value)? pinAlreadySet,
    TResult Function(_PinNotSet value)? pinNotSet,
    TResult Function(_PinMismatch value)? pinMismatch,
    TResult Function(_LockedOut value)? lockedOut,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements LockFailure {
  const factory _Unexpected(final dynamic e) = _$_Unexpected;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WrongPinCopyWith<$Res> {
  factory _$$_WrongPinCopyWith(
          _$_WrongPin value, $Res Function(_$_WrongPin) then) =
      __$$_WrongPinCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WrongPinCopyWithImpl<$Res>
    extends _$LockFailureCopyWithImpl<$Res, _$_WrongPin>
    implements _$$_WrongPinCopyWith<$Res> {
  __$$_WrongPinCopyWithImpl(
      _$_WrongPin _value, $Res Function(_$_WrongPin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WrongPin implements _WrongPin {
  const _$_WrongPin();

  @override
  String toString() {
    return 'LockFailure.wrongPin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WrongPin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() wrongPin,
    required TResult Function() invalidPin,
    required TResult Function() pinAlreadySet,
    required TResult Function() pinNotSet,
    required TResult Function() pinMismatch,
    required TResult Function(int remainingSeconds) lockedOut,
  }) {
    return wrongPin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? wrongPin,
    TResult? Function()? invalidPin,
    TResult? Function()? pinAlreadySet,
    TResult? Function()? pinNotSet,
    TResult? Function()? pinMismatch,
    TResult? Function(int remainingSeconds)? lockedOut,
  }) {
    return wrongPin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? wrongPin,
    TResult Function()? invalidPin,
    TResult Function()? pinAlreadySet,
    TResult Function()? pinNotSet,
    TResult Function()? pinMismatch,
    TResult Function(int remainingSeconds)? lockedOut,
    required TResult orElse(),
  }) {
    if (wrongPin != null) {
      return wrongPin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_WrongPin value) wrongPin,
    required TResult Function(_InvalidPin value) invalidPin,
    required TResult Function(_PinAlreadySet value) pinAlreadySet,
    required TResult Function(_PinNotSet value) pinNotSet,
    required TResult Function(_PinMismatch value) pinMismatch,
    required TResult Function(_LockedOut value) lockedOut,
  }) {
    return wrongPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_WrongPin value)? wrongPin,
    TResult? Function(_InvalidPin value)? invalidPin,
    TResult? Function(_PinAlreadySet value)? pinAlreadySet,
    TResult? Function(_PinNotSet value)? pinNotSet,
    TResult? Function(_PinMismatch value)? pinMismatch,
    TResult? Function(_LockedOut value)? lockedOut,
  }) {
    return wrongPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_WrongPin value)? wrongPin,
    TResult Function(_InvalidPin value)? invalidPin,
    TResult Function(_PinAlreadySet value)? pinAlreadySet,
    TResult Function(_PinNotSet value)? pinNotSet,
    TResult Function(_PinMismatch value)? pinMismatch,
    TResult Function(_LockedOut value)? lockedOut,
    required TResult orElse(),
  }) {
    if (wrongPin != null) {
      return wrongPin(this);
    }
    return orElse();
  }
}

abstract class _WrongPin implements LockFailure {
  const factory _WrongPin() = _$_WrongPin;
}

/// @nodoc
abstract class _$$_InvalidPinCopyWith<$Res> {
  factory _$$_InvalidPinCopyWith(
          _$_InvalidPin value, $Res Function(_$_InvalidPin) then) =
      __$$_InvalidPinCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidPinCopyWithImpl<$Res>
    extends _$LockFailureCopyWithImpl<$Res, _$_InvalidPin>
    implements _$$_InvalidPinCopyWith<$Res> {
  __$$_InvalidPinCopyWithImpl(
      _$_InvalidPin _value, $Res Function(_$_InvalidPin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidPin implements _InvalidPin {
  const _$_InvalidPin();

  @override
  String toString() {
    return 'LockFailure.invalidPin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidPin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() wrongPin,
    required TResult Function() invalidPin,
    required TResult Function() pinAlreadySet,
    required TResult Function() pinNotSet,
    required TResult Function() pinMismatch,
    required TResult Function(int remainingSeconds) lockedOut,
  }) {
    return invalidPin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? wrongPin,
    TResult? Function()? invalidPin,
    TResult? Function()? pinAlreadySet,
    TResult? Function()? pinNotSet,
    TResult? Function()? pinMismatch,
    TResult? Function(int remainingSeconds)? lockedOut,
  }) {
    return invalidPin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? wrongPin,
    TResult Function()? invalidPin,
    TResult Function()? pinAlreadySet,
    TResult Function()? pinNotSet,
    TResult Function()? pinMismatch,
    TResult Function(int remainingSeconds)? lockedOut,
    required TResult orElse(),
  }) {
    if (invalidPin != null) {
      return invalidPin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_WrongPin value) wrongPin,
    required TResult Function(_InvalidPin value) invalidPin,
    required TResult Function(_PinAlreadySet value) pinAlreadySet,
    required TResult Function(_PinNotSet value) pinNotSet,
    required TResult Function(_PinMismatch value) pinMismatch,
    required TResult Function(_LockedOut value) lockedOut,
  }) {
    return invalidPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_WrongPin value)? wrongPin,
    TResult? Function(_InvalidPin value)? invalidPin,
    TResult? Function(_PinAlreadySet value)? pinAlreadySet,
    TResult? Function(_PinNotSet value)? pinNotSet,
    TResult? Function(_PinMismatch value)? pinMismatch,
    TResult? Function(_LockedOut value)? lockedOut,
  }) {
    return invalidPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_WrongPin value)? wrongPin,
    TResult Function(_InvalidPin value)? invalidPin,
    TResult Function(_PinAlreadySet value)? pinAlreadySet,
    TResult Function(_PinNotSet value)? pinNotSet,
    TResult Function(_PinMismatch value)? pinMismatch,
    TResult Function(_LockedOut value)? lockedOut,
    required TResult orElse(),
  }) {
    if (invalidPin != null) {
      return invalidPin(this);
    }
    return orElse();
  }
}

abstract class _InvalidPin implements LockFailure {
  const factory _InvalidPin() = _$_InvalidPin;
}

/// @nodoc
abstract class _$$_PinAlreadySetCopyWith<$Res> {
  factory _$$_PinAlreadySetCopyWith(
          _$_PinAlreadySet value, $Res Function(_$_PinAlreadySet) then) =
      __$$_PinAlreadySetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PinAlreadySetCopyWithImpl<$Res>
    extends _$LockFailureCopyWithImpl<$Res, _$_PinAlreadySet>
    implements _$$_PinAlreadySetCopyWith<$Res> {
  __$$_PinAlreadySetCopyWithImpl(
      _$_PinAlreadySet _value, $Res Function(_$_PinAlreadySet) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PinAlreadySet implements _PinAlreadySet {
  const _$_PinAlreadySet();

  @override
  String toString() {
    return 'LockFailure.pinAlreadySet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PinAlreadySet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() wrongPin,
    required TResult Function() invalidPin,
    required TResult Function() pinAlreadySet,
    required TResult Function() pinNotSet,
    required TResult Function() pinMismatch,
    required TResult Function(int remainingSeconds) lockedOut,
  }) {
    return pinAlreadySet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? wrongPin,
    TResult? Function()? invalidPin,
    TResult? Function()? pinAlreadySet,
    TResult? Function()? pinNotSet,
    TResult? Function()? pinMismatch,
    TResult? Function(int remainingSeconds)? lockedOut,
  }) {
    return pinAlreadySet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? wrongPin,
    TResult Function()? invalidPin,
    TResult Function()? pinAlreadySet,
    TResult Function()? pinNotSet,
    TResult Function()? pinMismatch,
    TResult Function(int remainingSeconds)? lockedOut,
    required TResult orElse(),
  }) {
    if (pinAlreadySet != null) {
      return pinAlreadySet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_WrongPin value) wrongPin,
    required TResult Function(_InvalidPin value) invalidPin,
    required TResult Function(_PinAlreadySet value) pinAlreadySet,
    required TResult Function(_PinNotSet value) pinNotSet,
    required TResult Function(_PinMismatch value) pinMismatch,
    required TResult Function(_LockedOut value) lockedOut,
  }) {
    return pinAlreadySet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_WrongPin value)? wrongPin,
    TResult? Function(_InvalidPin value)? invalidPin,
    TResult? Function(_PinAlreadySet value)? pinAlreadySet,
    TResult? Function(_PinNotSet value)? pinNotSet,
    TResult? Function(_PinMismatch value)? pinMismatch,
    TResult? Function(_LockedOut value)? lockedOut,
  }) {
    return pinAlreadySet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_WrongPin value)? wrongPin,
    TResult Function(_InvalidPin value)? invalidPin,
    TResult Function(_PinAlreadySet value)? pinAlreadySet,
    TResult Function(_PinNotSet value)? pinNotSet,
    TResult Function(_PinMismatch value)? pinMismatch,
    TResult Function(_LockedOut value)? lockedOut,
    required TResult orElse(),
  }) {
    if (pinAlreadySet != null) {
      return pinAlreadySet(this);
    }
    return orElse();
  }
}

abstract class _PinAlreadySet implements LockFailure {
  const factory _PinAlreadySet() = _$_PinAlreadySet;
}

/// @nodoc
abstract class _$$_PinNotSetCopyWith<$Res> {
  factory _$$_PinNotSetCopyWith(
          _$_PinNotSet value, $Res Function(_$_PinNotSet) then) =
      __$$_PinNotSetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PinNotSetCopyWithImpl<$Res>
    extends _$LockFailureCopyWithImpl<$Res, _$_PinNotSet>
    implements _$$_PinNotSetCopyWith<$Res> {
  __$$_PinNotSetCopyWithImpl(
      _$_PinNotSet _value, $Res Function(_$_PinNotSet) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PinNotSet implements _PinNotSet {
  const _$_PinNotSet();

  @override
  String toString() {
    return 'LockFailure.pinNotSet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PinNotSet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() wrongPin,
    required TResult Function() invalidPin,
    required TResult Function() pinAlreadySet,
    required TResult Function() pinNotSet,
    required TResult Function() pinMismatch,
    required TResult Function(int remainingSeconds) lockedOut,
  }) {
    return pinNotSet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? wrongPin,
    TResult? Function()? invalidPin,
    TResult? Function()? pinAlreadySet,
    TResult? Function()? pinNotSet,
    TResult? Function()? pinMismatch,
    TResult? Function(int remainingSeconds)? lockedOut,
  }) {
    return pinNotSet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? wrongPin,
    TResult Function()? invalidPin,
    TResult Function()? pinAlreadySet,
    TResult Function()? pinNotSet,
    TResult Function()? pinMismatch,
    TResult Function(int remainingSeconds)? lockedOut,
    required TResult orElse(),
  }) {
    if (pinNotSet != null) {
      return pinNotSet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_WrongPin value) wrongPin,
    required TResult Function(_InvalidPin value) invalidPin,
    required TResult Function(_PinAlreadySet value) pinAlreadySet,
    required TResult Function(_PinNotSet value) pinNotSet,
    required TResult Function(_PinMismatch value) pinMismatch,
    required TResult Function(_LockedOut value) lockedOut,
  }) {
    return pinNotSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_WrongPin value)? wrongPin,
    TResult? Function(_InvalidPin value)? invalidPin,
    TResult? Function(_PinAlreadySet value)? pinAlreadySet,
    TResult? Function(_PinNotSet value)? pinNotSet,
    TResult? Function(_PinMismatch value)? pinMismatch,
    TResult? Function(_LockedOut value)? lockedOut,
  }) {
    return pinNotSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_WrongPin value)? wrongPin,
    TResult Function(_InvalidPin value)? invalidPin,
    TResult Function(_PinAlreadySet value)? pinAlreadySet,
    TResult Function(_PinNotSet value)? pinNotSet,
    TResult Function(_PinMismatch value)? pinMismatch,
    TResult Function(_LockedOut value)? lockedOut,
    required TResult orElse(),
  }) {
    if (pinNotSet != null) {
      return pinNotSet(this);
    }
    return orElse();
  }
}

abstract class _PinNotSet implements LockFailure {
  const factory _PinNotSet() = _$_PinNotSet;
}

/// @nodoc
abstract class _$$_PinMismatchCopyWith<$Res> {
  factory _$$_PinMismatchCopyWith(
          _$_PinMismatch value, $Res Function(_$_PinMismatch) then) =
      __$$_PinMismatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PinMismatchCopyWithImpl<$Res>
    extends _$LockFailureCopyWithImpl<$Res, _$_PinMismatch>
    implements _$$_PinMismatchCopyWith<$Res> {
  __$$_PinMismatchCopyWithImpl(
      _$_PinMismatch _value, $Res Function(_$_PinMismatch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PinMismatch implements _PinMismatch {
  const _$_PinMismatch();

  @override
  String toString() {
    return 'LockFailure.pinMismatch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PinMismatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() wrongPin,
    required TResult Function() invalidPin,
    required TResult Function() pinAlreadySet,
    required TResult Function() pinNotSet,
    required TResult Function() pinMismatch,
    required TResult Function(int remainingSeconds) lockedOut,
  }) {
    return pinMismatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? wrongPin,
    TResult? Function()? invalidPin,
    TResult? Function()? pinAlreadySet,
    TResult? Function()? pinNotSet,
    TResult? Function()? pinMismatch,
    TResult? Function(int remainingSeconds)? lockedOut,
  }) {
    return pinMismatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? wrongPin,
    TResult Function()? invalidPin,
    TResult Function()? pinAlreadySet,
    TResult Function()? pinNotSet,
    TResult Function()? pinMismatch,
    TResult Function(int remainingSeconds)? lockedOut,
    required TResult orElse(),
  }) {
    if (pinMismatch != null) {
      return pinMismatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_WrongPin value) wrongPin,
    required TResult Function(_InvalidPin value) invalidPin,
    required TResult Function(_PinAlreadySet value) pinAlreadySet,
    required TResult Function(_PinNotSet value) pinNotSet,
    required TResult Function(_PinMismatch value) pinMismatch,
    required TResult Function(_LockedOut value) lockedOut,
  }) {
    return pinMismatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_WrongPin value)? wrongPin,
    TResult? Function(_InvalidPin value)? invalidPin,
    TResult? Function(_PinAlreadySet value)? pinAlreadySet,
    TResult? Function(_PinNotSet value)? pinNotSet,
    TResult? Function(_PinMismatch value)? pinMismatch,
    TResult? Function(_LockedOut value)? lockedOut,
  }) {
    return pinMismatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_WrongPin value)? wrongPin,
    TResult Function(_InvalidPin value)? invalidPin,
    TResult Function(_PinAlreadySet value)? pinAlreadySet,
    TResult Function(_PinNotSet value)? pinNotSet,
    TResult Function(_PinMismatch value)? pinMismatch,
    TResult Function(_LockedOut value)? lockedOut,
    required TResult orElse(),
  }) {
    if (pinMismatch != null) {
      return pinMismatch(this);
    }
    return orElse();
  }
}

abstract class _PinMismatch implements LockFailure {
  const factory _PinMismatch() = _$_PinMismatch;
}

/// @nodoc
abstract class _$$_LockedOutCopyWith<$Res> {
  factory _$$_LockedOutCopyWith(
          _$_LockedOut value, $Res Function(_$_LockedOut) then) =
      __$$_LockedOutCopyWithImpl<$Res>;
  @useResult
  $Res call({int remainingSeconds});
}

/// @nodoc
class __$$_LockedOutCopyWithImpl<$Res>
    extends _$LockFailureCopyWithImpl<$Res, _$_LockedOut>
    implements _$$_LockedOutCopyWith<$Res> {
  __$$_LockedOutCopyWithImpl(
      _$_LockedOut _value, $Res Function(_$_LockedOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingSeconds = null,
  }) {
    return _then(_$_LockedOut(
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LockedOut implements _LockedOut {
  const _$_LockedOut({required this.remainingSeconds});

  @override
  final int remainingSeconds;

  @override
  String toString() {
    return 'LockFailure.lockedOut(remainingSeconds: $remainingSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LockedOut &&
            (identical(other.remainingSeconds, remainingSeconds) ||
                other.remainingSeconds == remainingSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remainingSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LockedOutCopyWith<_$_LockedOut> get copyWith =>
      __$$_LockedOutCopyWithImpl<_$_LockedOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() wrongPin,
    required TResult Function() invalidPin,
    required TResult Function() pinAlreadySet,
    required TResult Function() pinNotSet,
    required TResult Function() pinMismatch,
    required TResult Function(int remainingSeconds) lockedOut,
  }) {
    return lockedOut(remainingSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? wrongPin,
    TResult? Function()? invalidPin,
    TResult? Function()? pinAlreadySet,
    TResult? Function()? pinNotSet,
    TResult? Function()? pinMismatch,
    TResult? Function(int remainingSeconds)? lockedOut,
  }) {
    return lockedOut?.call(remainingSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? wrongPin,
    TResult Function()? invalidPin,
    TResult Function()? pinAlreadySet,
    TResult Function()? pinNotSet,
    TResult Function()? pinMismatch,
    TResult Function(int remainingSeconds)? lockedOut,
    required TResult orElse(),
  }) {
    if (lockedOut != null) {
      return lockedOut(remainingSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_WrongPin value) wrongPin,
    required TResult Function(_InvalidPin value) invalidPin,
    required TResult Function(_PinAlreadySet value) pinAlreadySet,
    required TResult Function(_PinNotSet value) pinNotSet,
    required TResult Function(_PinMismatch value) pinMismatch,
    required TResult Function(_LockedOut value) lockedOut,
  }) {
    return lockedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_WrongPin value)? wrongPin,
    TResult? Function(_InvalidPin value)? invalidPin,
    TResult? Function(_PinAlreadySet value)? pinAlreadySet,
    TResult? Function(_PinNotSet value)? pinNotSet,
    TResult? Function(_PinMismatch value)? pinMismatch,
    TResult? Function(_LockedOut value)? lockedOut,
  }) {
    return lockedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_WrongPin value)? wrongPin,
    TResult Function(_InvalidPin value)? invalidPin,
    TResult Function(_PinAlreadySet value)? pinAlreadySet,
    TResult Function(_PinNotSet value)? pinNotSet,
    TResult Function(_PinMismatch value)? pinMismatch,
    TResult Function(_LockedOut value)? lockedOut,
    required TResult orElse(),
  }) {
    if (lockedOut != null) {
      return lockedOut(this);
    }
    return orElse();
  }
}

abstract class _LockedOut implements LockFailure {
  const factory _LockedOut({required final int remainingSeconds}) =
      _$_LockedOut;

  int get remainingSeconds;
  @JsonKey(ignore: true)
  _$$_LockedOutCopyWith<_$_LockedOut> get copyWith =>
      throw _privateConstructorUsedError;
}
