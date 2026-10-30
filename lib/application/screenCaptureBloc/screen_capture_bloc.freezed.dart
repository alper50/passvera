// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_capture_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScreenCaptureEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ScreenCaptureEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ScreenCaptureEvent()';
  }
}

/// @nodoc
class $ScreenCaptureEventCopyWith<$Res> {
  $ScreenCaptureEventCopyWith(
      ScreenCaptureEvent _, $Res Function(ScreenCaptureEvent) __);
}

/// Adds pattern-matching-related methods to [ScreenCaptureEvent].
extension ScreenCaptureEventPatterns on ScreenCaptureEvent {
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
    TResult Function(_Started value)? started,
    TResult Function(_Captured value)? captured,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _Captured() when captured != null:
        return captured(_that);
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
    required TResult Function(_Started value) started,
    required TResult Function(_Captured value) captured,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case _Captured():
        return captured(_that);
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
    TResult? Function(_Started value)? started,
    TResult? Function(_Captured value)? captured,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _Captured() when captured != null:
        return captured(_that);
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
    TResult Function()? started,
    TResult Function()? captured,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _Captured() when captured != null:
        return captured();
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
    required TResult Function() started,
    required TResult Function() captured,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case _Captured():
        return captured();
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
    TResult? Function()? started,
    TResult? Function()? captured,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _Captured() when captured != null:
        return captured();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements ScreenCaptureEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ScreenCaptureEvent.started()';
  }
}

/// @nodoc

class _Captured implements ScreenCaptureEvent {
  const _Captured();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Captured);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ScreenCaptureEvent.captured()';
  }
}

/// @nodoc
mixin _$ScreenCaptureState {
  /// False where screenshots stay blocked (Android 13 and older).
  bool get isAllowed;

  /// Screenshots taken on this screen; each new one warns the user.
  int get captureCount;

  /// Create a copy of ScreenCaptureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScreenCaptureStateCopyWith<ScreenCaptureState> get copyWith =>
      _$ScreenCaptureStateCopyWithImpl<ScreenCaptureState>(
          this as ScreenCaptureState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ScreenCaptureState &&
            (identical(other.isAllowed, isAllowed) ||
                other.isAllowed == isAllowed) &&
            (identical(other.captureCount, captureCount) ||
                other.captureCount == captureCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAllowed, captureCount);

  @override
  String toString() {
    return 'ScreenCaptureState(isAllowed: $isAllowed, captureCount: $captureCount)';
  }
}

/// @nodoc
abstract mixin class $ScreenCaptureStateCopyWith<$Res> {
  factory $ScreenCaptureStateCopyWith(
          ScreenCaptureState value, $Res Function(ScreenCaptureState) _then) =
      _$ScreenCaptureStateCopyWithImpl;
  @useResult
  $Res call({bool isAllowed, int captureCount});
}

/// @nodoc
class _$ScreenCaptureStateCopyWithImpl<$Res>
    implements $ScreenCaptureStateCopyWith<$Res> {
  _$ScreenCaptureStateCopyWithImpl(this._self, this._then);

  final ScreenCaptureState _self;
  final $Res Function(ScreenCaptureState) _then;

  /// Create a copy of ScreenCaptureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAllowed = null,
    Object? captureCount = null,
  }) {
    return _then(_self.copyWith(
      isAllowed: null == isAllowed
          ? _self.isAllowed
          : isAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      captureCount: null == captureCount
          ? _self.captureCount
          : captureCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ScreenCaptureState].
extension ScreenCaptureStatePatterns on ScreenCaptureState {
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
    TResult Function(_ScreenCaptureState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScreenCaptureState() when $default != null:
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
    TResult Function(_ScreenCaptureState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScreenCaptureState():
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
    TResult? Function(_ScreenCaptureState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScreenCaptureState() when $default != null:
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
    TResult Function(bool isAllowed, int captureCount)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScreenCaptureState() when $default != null:
        return $default(_that.isAllowed, _that.captureCount);
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
    TResult Function(bool isAllowed, int captureCount) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScreenCaptureState():
        return $default(_that.isAllowed, _that.captureCount);
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
    TResult? Function(bool isAllowed, int captureCount)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScreenCaptureState() when $default != null:
        return $default(_that.isAllowed, _that.captureCount);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ScreenCaptureState implements ScreenCaptureState {
  const _ScreenCaptureState(
      {required this.isAllowed, required this.captureCount});

  /// False where screenshots stay blocked (Android 13 and older).
  @override
  final bool isAllowed;

  /// Screenshots taken on this screen; each new one warns the user.
  @override
  final int captureCount;

  /// Create a copy of ScreenCaptureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ScreenCaptureStateCopyWith<_ScreenCaptureState> get copyWith =>
      __$ScreenCaptureStateCopyWithImpl<_ScreenCaptureState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScreenCaptureState &&
            (identical(other.isAllowed, isAllowed) ||
                other.isAllowed == isAllowed) &&
            (identical(other.captureCount, captureCount) ||
                other.captureCount == captureCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAllowed, captureCount);

  @override
  String toString() {
    return 'ScreenCaptureState(isAllowed: $isAllowed, captureCount: $captureCount)';
  }
}

/// @nodoc
abstract mixin class _$ScreenCaptureStateCopyWith<$Res>
    implements $ScreenCaptureStateCopyWith<$Res> {
  factory _$ScreenCaptureStateCopyWith(
          _ScreenCaptureState value, $Res Function(_ScreenCaptureState) _then) =
      __$ScreenCaptureStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool isAllowed, int captureCount});
}

/// @nodoc
class __$ScreenCaptureStateCopyWithImpl<$Res>
    implements _$ScreenCaptureStateCopyWith<$Res> {
  __$ScreenCaptureStateCopyWithImpl(this._self, this._then);

  final _ScreenCaptureState _self;
  final $Res Function(_ScreenCaptureState) _then;

  /// Create a copy of ScreenCaptureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isAllowed = null,
    Object? captureCount = null,
  }) {
    return _then(_ScreenCaptureState(
      isAllowed: null == isAllowed
          ? _self.isAllowed
          : isAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      captureCount: null == captureCount
          ? _self.captureCount
          : captureCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
