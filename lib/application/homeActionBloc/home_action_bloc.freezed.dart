// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeActionEvent {
  String get appKey;
  String get appValue;
  String get tag;
  int get colorValue;

  /// Create a copy of HomeActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeActionEventCopyWith<HomeActionEvent> get copyWith =>
      _$HomeActionEventCopyWithImpl<HomeActionEvent>(
          this as HomeActionEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeActionEvent &&
            (identical(other.appKey, appKey) || other.appKey == appKey) &&
            (identical(other.appValue, appValue) ||
                other.appValue == appValue) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.colorValue, colorValue) ||
                other.colorValue == colorValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appKey, appValue, tag, colorValue);

  @override
  String toString() {
    return 'HomeActionEvent(appKey: $appKey, appValue: $appValue, tag: $tag, colorValue: $colorValue)';
  }
}

/// @nodoc
abstract mixin class $HomeActionEventCopyWith<$Res> {
  factory $HomeActionEventCopyWith(
          HomeActionEvent value, $Res Function(HomeActionEvent) _then) =
      _$HomeActionEventCopyWithImpl;
  @useResult
  $Res call({String appKey, String appValue, String tag, int colorValue});
}

/// @nodoc
class _$HomeActionEventCopyWithImpl<$Res>
    implements $HomeActionEventCopyWith<$Res> {
  _$HomeActionEventCopyWithImpl(this._self, this._then);

  final HomeActionEvent _self;
  final $Res Function(HomeActionEvent) _then;

  /// Create a copy of HomeActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appKey = null,
    Object? appValue = null,
    Object? tag = null,
    Object? colorValue = null,
  }) {
    return _then(_self.copyWith(
      appKey: null == appKey
          ? _self.appKey
          : appKey // ignore: cast_nullable_to_non_nullable
              as String,
      appValue: null == appValue
          ? _self.appValue
          : appValue // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      colorValue: null == colorValue
          ? _self.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [HomeActionEvent].
extension HomeActionEventPatterns on HomeActionEvent {
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
    TResult Function(_EncryptValue value)? encryptValue,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EncryptValue() when encryptValue != null:
        return encryptValue(_that);
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
    required TResult Function(_EncryptValue value) encryptValue,
  }) {
    final _that = this;
    switch (_that) {
      case _EncryptValue():
        return encryptValue(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(_EncryptValue value)? encryptValue,
  }) {
    final _that = this;
    switch (_that) {
      case _EncryptValue() when encryptValue != null:
        return encryptValue(_that);
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
    TResult Function(
            String appKey, String appValue, String tag, int colorValue)?
        encryptValue,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EncryptValue() when encryptValue != null:
        return encryptValue(
            _that.appKey, _that.appValue, _that.tag, _that.colorValue);
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
    required TResult Function(
            String appKey, String appValue, String tag, int colorValue)
        encryptValue,
  }) {
    final _that = this;
    switch (_that) {
      case _EncryptValue():
        return encryptValue(
            _that.appKey, _that.appValue, _that.tag, _that.colorValue);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(
            String appKey, String appValue, String tag, int colorValue)?
        encryptValue,
  }) {
    final _that = this;
    switch (_that) {
      case _EncryptValue() when encryptValue != null:
        return encryptValue(
            _that.appKey, _that.appValue, _that.tag, _that.colorValue);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _EncryptValue implements HomeActionEvent {
  const _EncryptValue(
      {required this.appKey,
      required this.appValue,
      required this.tag,
      required this.colorValue});

  @override
  final String appKey;
  @override
  final String appValue;
  @override
  final String tag;
  @override
  final int colorValue;

  /// Create a copy of HomeActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EncryptValueCopyWith<_EncryptValue> get copyWith =>
      __$EncryptValueCopyWithImpl<_EncryptValue>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EncryptValue &&
            (identical(other.appKey, appKey) || other.appKey == appKey) &&
            (identical(other.appValue, appValue) ||
                other.appValue == appValue) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.colorValue, colorValue) ||
                other.colorValue == colorValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appKey, appValue, tag, colorValue);

  @override
  String toString() {
    return 'HomeActionEvent.encryptValue(appKey: $appKey, appValue: $appValue, tag: $tag, colorValue: $colorValue)';
  }
}

/// @nodoc
abstract mixin class _$EncryptValueCopyWith<$Res>
    implements $HomeActionEventCopyWith<$Res> {
  factory _$EncryptValueCopyWith(
          _EncryptValue value, $Res Function(_EncryptValue) _then) =
      __$EncryptValueCopyWithImpl;
  @override
  @useResult
  $Res call({String appKey, String appValue, String tag, int colorValue});
}

/// @nodoc
class __$EncryptValueCopyWithImpl<$Res>
    implements _$EncryptValueCopyWith<$Res> {
  __$EncryptValueCopyWithImpl(this._self, this._then);

  final _EncryptValue _self;
  final $Res Function(_EncryptValue) _then;

  /// Create a copy of HomeActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? appKey = null,
    Object? appValue = null,
    Object? tag = null,
    Object? colorValue = null,
  }) {
    return _then(_EncryptValue(
      appKey: null == appKey
          ? _self.appKey
          : appKey // ignore: cast_nullable_to_non_nullable
              as String,
      appValue: null == appValue
          ? _self.appValue
          : appValue // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      colorValue: null == colorValue
          ? _self.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$HomeActionState {
  Option<Either<StorageFailure, Unit>> get verifyFailureOrSucces;

  /// Create a copy of HomeActionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeActionStateCopyWith<HomeActionState> get copyWith =>
      _$HomeActionStateCopyWithImpl<HomeActionState>(
          this as HomeActionState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeActionState &&
            (identical(other.verifyFailureOrSucces, verifyFailureOrSucces) ||
                other.verifyFailureOrSucces == verifyFailureOrSucces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyFailureOrSucces);

  @override
  String toString() {
    return 'HomeActionState(verifyFailureOrSucces: $verifyFailureOrSucces)';
  }
}

/// @nodoc
abstract mixin class $HomeActionStateCopyWith<$Res> {
  factory $HomeActionStateCopyWith(
          HomeActionState value, $Res Function(HomeActionState) _then) =
      _$HomeActionStateCopyWithImpl;
  @useResult
  $Res call({Option<Either<StorageFailure, Unit>> verifyFailureOrSucces});
}

/// @nodoc
class _$HomeActionStateCopyWithImpl<$Res>
    implements $HomeActionStateCopyWith<$Res> {
  _$HomeActionStateCopyWithImpl(this._self, this._then);

  final HomeActionState _self;
  final $Res Function(HomeActionState) _then;

  /// Create a copy of HomeActionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyFailureOrSucces = null,
  }) {
    return _then(_self.copyWith(
      verifyFailureOrSucces: null == verifyFailureOrSucces
          ? _self.verifyFailureOrSucces
          : verifyFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
    ));
  }
}

/// Adds pattern-matching-related methods to [HomeActionState].
extension HomeActionStatePatterns on HomeActionState {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HomeActionState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeActionState() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_HomeActionState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeActionState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HomeActionState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeActionState() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<StorageFailure, Unit>> verifyFailureOrSucces)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeActionState() when $default != null:
        return $default(_that.verifyFailureOrSucces);
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
  TResult when<TResult extends Object?>(
    TResult Function(Option<Either<StorageFailure, Unit>> verifyFailureOrSucces)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeActionState():
        return $default(_that.verifyFailureOrSucces);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            Option<Either<StorageFailure, Unit>> verifyFailureOrSucces)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeActionState() when $default != null:
        return $default(_that.verifyFailureOrSucces);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HomeActionState implements HomeActionState {
  const _HomeActionState({required this.verifyFailureOrSucces});

  @override
  final Option<Either<StorageFailure, Unit>> verifyFailureOrSucces;

  /// Create a copy of HomeActionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeActionStateCopyWith<_HomeActionState> get copyWith =>
      __$HomeActionStateCopyWithImpl<_HomeActionState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeActionState &&
            (identical(other.verifyFailureOrSucces, verifyFailureOrSucces) ||
                other.verifyFailureOrSucces == verifyFailureOrSucces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyFailureOrSucces);

  @override
  String toString() {
    return 'HomeActionState(verifyFailureOrSucces: $verifyFailureOrSucces)';
  }
}

/// @nodoc
abstract mixin class _$HomeActionStateCopyWith<$Res>
    implements $HomeActionStateCopyWith<$Res> {
  factory _$HomeActionStateCopyWith(
          _HomeActionState value, $Res Function(_HomeActionState) _then) =
      __$HomeActionStateCopyWithImpl;
  @override
  @useResult
  $Res call({Option<Either<StorageFailure, Unit>> verifyFailureOrSucces});
}

/// @nodoc
class __$HomeActionStateCopyWithImpl<$Res>
    implements _$HomeActionStateCopyWith<$Res> {
  __$HomeActionStateCopyWithImpl(this._self, this._then);

  final _HomeActionState _self;
  final $Res Function(_HomeActionState) _then;

  /// Create a copy of HomeActionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? verifyFailureOrSucces = null,
  }) {
    return _then(_HomeActionState(
      verifyFailureOrSucces: null == verifyFailureOrSucces
          ? _self.verifyFailureOrSucces
          : verifyFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
    ));
  }
}

// dart format on
