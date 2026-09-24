// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lock_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LockFailure {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LockFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LockFailure()';
  }
}

/// @nodoc
class $LockFailureCopyWith<$Res> {
  $LockFailureCopyWith(LockFailure _, $Res Function(LockFailure) __);
}

/// Adds pattern-matching-related methods to [LockFailure].
extension LockFailurePatterns on LockFailure {
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
    TResult Function(_WrongPin value)? wrongPin,
    TResult Function(_InvalidPin value)? invalidPin,
    TResult Function(_PinAlreadySet value)? pinAlreadySet,
    TResult Function(_PinNotSet value)? pinNotSet,
    TResult Function(_PinMismatch value)? pinMismatch,
    TResult Function(_LockedOut value)? lockedOut,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that);
      case _WrongPin() when wrongPin != null:
        return wrongPin(_that);
      case _InvalidPin() when invalidPin != null:
        return invalidPin(_that);
      case _PinAlreadySet() when pinAlreadySet != null:
        return pinAlreadySet(_that);
      case _PinNotSet() when pinNotSet != null:
        return pinNotSet(_that);
      case _PinMismatch() when pinMismatch != null:
        return pinMismatch(_that);
      case _LockedOut() when lockedOut != null:
        return lockedOut(_that);
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
    required TResult Function(_WrongPin value) wrongPin,
    required TResult Function(_InvalidPin value) invalidPin,
    required TResult Function(_PinAlreadySet value) pinAlreadySet,
    required TResult Function(_PinNotSet value) pinNotSet,
    required TResult Function(_PinMismatch value) pinMismatch,
    required TResult Function(_LockedOut value) lockedOut,
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected():
        return unexpected(_that);
      case _WrongPin():
        return wrongPin(_that);
      case _InvalidPin():
        return invalidPin(_that);
      case _PinAlreadySet():
        return pinAlreadySet(_that);
      case _PinNotSet():
        return pinNotSet(_that);
      case _PinMismatch():
        return pinMismatch(_that);
      case _LockedOut():
        return lockedOut(_that);
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
    TResult? Function(_WrongPin value)? wrongPin,
    TResult? Function(_InvalidPin value)? invalidPin,
    TResult? Function(_PinAlreadySet value)? pinAlreadySet,
    TResult? Function(_PinNotSet value)? pinNotSet,
    TResult? Function(_PinMismatch value)? pinMismatch,
    TResult? Function(_LockedOut value)? lockedOut,
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that);
      case _WrongPin() when wrongPin != null:
        return wrongPin(_that);
      case _InvalidPin() when invalidPin != null:
        return invalidPin(_that);
      case _PinAlreadySet() when pinAlreadySet != null:
        return pinAlreadySet(_that);
      case _PinNotSet() when pinNotSet != null:
        return pinNotSet(_that);
      case _PinMismatch() when pinMismatch != null:
        return pinMismatch(_that);
      case _LockedOut() when lockedOut != null:
        return lockedOut(_that);
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
    TResult Function()? wrongPin,
    TResult Function()? invalidPin,
    TResult Function()? pinAlreadySet,
    TResult Function()? pinNotSet,
    TResult Function()? pinMismatch,
    TResult Function(int remainingSeconds)? lockedOut,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that.e);
      case _WrongPin() when wrongPin != null:
        return wrongPin();
      case _InvalidPin() when invalidPin != null:
        return invalidPin();
      case _PinAlreadySet() when pinAlreadySet != null:
        return pinAlreadySet();
      case _PinNotSet() when pinNotSet != null:
        return pinNotSet();
      case _PinMismatch() when pinMismatch != null:
        return pinMismatch();
      case _LockedOut() when lockedOut != null:
        return lockedOut(_that.remainingSeconds);
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
    required TResult Function() wrongPin,
    required TResult Function() invalidPin,
    required TResult Function() pinAlreadySet,
    required TResult Function() pinNotSet,
    required TResult Function() pinMismatch,
    required TResult Function(int remainingSeconds) lockedOut,
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected():
        return unexpected(_that.e);
      case _WrongPin():
        return wrongPin();
      case _InvalidPin():
        return invalidPin();
      case _PinAlreadySet():
        return pinAlreadySet();
      case _PinNotSet():
        return pinNotSet();
      case _PinMismatch():
        return pinMismatch();
      case _LockedOut():
        return lockedOut(_that.remainingSeconds);
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
    TResult? Function()? wrongPin,
    TResult? Function()? invalidPin,
    TResult? Function()? pinAlreadySet,
    TResult? Function()? pinNotSet,
    TResult? Function()? pinMismatch,
    TResult? Function(int remainingSeconds)? lockedOut,
  }) {
    final _that = this;
    switch (_that) {
      case _Unexpected() when unexpected != null:
        return unexpected(_that.e);
      case _WrongPin() when wrongPin != null:
        return wrongPin();
      case _InvalidPin() when invalidPin != null:
        return invalidPin();
      case _PinAlreadySet() when pinAlreadySet != null:
        return pinAlreadySet();
      case _PinNotSet() when pinNotSet != null:
        return pinNotSet();
      case _PinMismatch() when pinMismatch != null:
        return pinMismatch();
      case _LockedOut() when lockedOut != null:
        return lockedOut(_that.remainingSeconds);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Unexpected implements LockFailure {
  const _Unexpected(this.e);

  final dynamic e;

  /// Create a copy of LockFailure
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
    return 'LockFailure.unexpected(e: $e)';
  }
}

/// @nodoc
abstract mixin class _$UnexpectedCopyWith<$Res>
    implements $LockFailureCopyWith<$Res> {
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

  /// Create a copy of LockFailure
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

class _WrongPin implements LockFailure {
  const _WrongPin();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WrongPin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LockFailure.wrongPin()';
  }
}

/// @nodoc

class _InvalidPin implements LockFailure {
  const _InvalidPin();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InvalidPin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LockFailure.invalidPin()';
  }
}

/// @nodoc

class _PinAlreadySet implements LockFailure {
  const _PinAlreadySet();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PinAlreadySet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LockFailure.pinAlreadySet()';
  }
}

/// @nodoc

class _PinNotSet implements LockFailure {
  const _PinNotSet();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PinNotSet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LockFailure.pinNotSet()';
  }
}

/// @nodoc

class _PinMismatch implements LockFailure {
  const _PinMismatch();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PinMismatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LockFailure.pinMismatch()';
  }
}

/// @nodoc

class _LockedOut implements LockFailure {
  const _LockedOut({required this.remainingSeconds});

  final int remainingSeconds;

  /// Create a copy of LockFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LockedOutCopyWith<_LockedOut> get copyWith =>
      __$LockedOutCopyWithImpl<_LockedOut>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LockedOut &&
            (identical(other.remainingSeconds, remainingSeconds) ||
                other.remainingSeconds == remainingSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remainingSeconds);

  @override
  String toString() {
    return 'LockFailure.lockedOut(remainingSeconds: $remainingSeconds)';
  }
}

/// @nodoc
abstract mixin class _$LockedOutCopyWith<$Res>
    implements $LockFailureCopyWith<$Res> {
  factory _$LockedOutCopyWith(
          _LockedOut value, $Res Function(_LockedOut) _then) =
      __$LockedOutCopyWithImpl;
  @useResult
  $Res call({int remainingSeconds});
}

/// @nodoc
class __$LockedOutCopyWithImpl<$Res> implements _$LockedOutCopyWith<$Res> {
  __$LockedOutCopyWithImpl(this._self, this._then);

  final _LockedOut _self;
  final $Res Function(_LockedOut) _then;

  /// Create a copy of LockFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? remainingSeconds = null,
  }) {
    return _then(_LockedOut(
      remainingSeconds: null == remainingSeconds
          ? _self.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
