// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clipboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClipboardEvent {
  String get text;

  /// Create a copy of ClipboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClipboardEventCopyWith<ClipboardEvent> get copyWith =>
      _$ClipboardEventCopyWithImpl<ClipboardEvent>(
          this as ClipboardEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClipboardEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  String toString() {
    return 'ClipboardEvent(text: $text)';
  }
}

/// @nodoc
abstract mixin class $ClipboardEventCopyWith<$Res> {
  factory $ClipboardEventCopyWith(
          ClipboardEvent value, $Res Function(ClipboardEvent) _then) =
      _$ClipboardEventCopyWithImpl;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$ClipboardEventCopyWithImpl<$Res>
    implements $ClipboardEventCopyWith<$Res> {
  _$ClipboardEventCopyWithImpl(this._self, this._then);

  final ClipboardEvent _self;
  final $Res Function(ClipboardEvent) _then;

  /// Create a copy of ClipboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ClipboardEvent].
extension ClipboardEventPatterns on ClipboardEvent {
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
    TResult Function(_CopySensitive value)? copySensitive,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CopySensitive() when copySensitive != null:
        return copySensitive(_that);
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
    required TResult Function(_CopySensitive value) copySensitive,
  }) {
    final _that = this;
    switch (_that) {
      case _CopySensitive():
        return copySensitive(_that);
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
    TResult? Function(_CopySensitive value)? copySensitive,
  }) {
    final _that = this;
    switch (_that) {
      case _CopySensitive() when copySensitive != null:
        return copySensitive(_that);
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
    TResult Function(String text)? copySensitive,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CopySensitive() when copySensitive != null:
        return copySensitive(_that.text);
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
    required TResult Function(String text) copySensitive,
  }) {
    final _that = this;
    switch (_that) {
      case _CopySensitive():
        return copySensitive(_that.text);
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
    TResult? Function(String text)? copySensitive,
  }) {
    final _that = this;
    switch (_that) {
      case _CopySensitive() when copySensitive != null:
        return copySensitive(_that.text);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CopySensitive implements ClipboardEvent {
  const _CopySensitive({required this.text});

  @override
  final String text;

  /// Create a copy of ClipboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CopySensitiveCopyWith<_CopySensitive> get copyWith =>
      __$CopySensitiveCopyWithImpl<_CopySensitive>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CopySensitive &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  String toString() {
    return 'ClipboardEvent.copySensitive(text: $text)';
  }
}

/// @nodoc
abstract mixin class _$CopySensitiveCopyWith<$Res>
    implements $ClipboardEventCopyWith<$Res> {
  factory _$CopySensitiveCopyWith(
          _CopySensitive value, $Res Function(_CopySensitive) _then) =
      __$CopySensitiveCopyWithImpl;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$CopySensitiveCopyWithImpl<$Res>
    implements _$CopySensitiveCopyWith<$Res> {
  __$CopySensitiveCopyWithImpl(this._self, this._then);

  final _CopySensitive _self;
  final $Res Function(_CopySensitive) _then;

  /// Create a copy of ClipboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
  }) {
    return _then(_CopySensitive(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ClipboardState {
  Option<Either<ClipboardFailure, Unit>> get copyFailureOrSuccess;

  /// Create a copy of ClipboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClipboardStateCopyWith<ClipboardState> get copyWith =>
      _$ClipboardStateCopyWithImpl<ClipboardState>(
          this as ClipboardState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClipboardState &&
            (identical(other.copyFailureOrSuccess, copyFailureOrSuccess) ||
                other.copyFailureOrSuccess == copyFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, copyFailureOrSuccess);

  @override
  String toString() {
    return 'ClipboardState(copyFailureOrSuccess: $copyFailureOrSuccess)';
  }
}

/// @nodoc
abstract mixin class $ClipboardStateCopyWith<$Res> {
  factory $ClipboardStateCopyWith(
          ClipboardState value, $Res Function(ClipboardState) _then) =
      _$ClipboardStateCopyWithImpl;
  @useResult
  $Res call({Option<Either<ClipboardFailure, Unit>> copyFailureOrSuccess});
}

/// @nodoc
class _$ClipboardStateCopyWithImpl<$Res>
    implements $ClipboardStateCopyWith<$Res> {
  _$ClipboardStateCopyWithImpl(this._self, this._then);

  final ClipboardState _self;
  final $Res Function(ClipboardState) _then;

  /// Create a copy of ClipboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copyFailureOrSuccess = null,
  }) {
    return _then(_self.copyWith(
      copyFailureOrSuccess: null == copyFailureOrSuccess
          ? _self.copyFailureOrSuccess
          : copyFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ClipboardFailure, Unit>>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ClipboardState].
extension ClipboardStatePatterns on ClipboardState {
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
    TResult Function(_ClipboardState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ClipboardState() when $default != null:
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
    TResult Function(_ClipboardState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClipboardState():
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
    TResult? Function(_ClipboardState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClipboardState() when $default != null:
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
            Option<Either<ClipboardFailure, Unit>> copyFailureOrSuccess)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ClipboardState() when $default != null:
        return $default(_that.copyFailureOrSuccess);
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
    TResult Function(
            Option<Either<ClipboardFailure, Unit>> copyFailureOrSuccess)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClipboardState():
        return $default(_that.copyFailureOrSuccess);
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
            Option<Either<ClipboardFailure, Unit>> copyFailureOrSuccess)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClipboardState() when $default != null:
        return $default(_that.copyFailureOrSuccess);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ClipboardState implements ClipboardState {
  const _ClipboardState({required this.copyFailureOrSuccess});

  @override
  final Option<Either<ClipboardFailure, Unit>> copyFailureOrSuccess;

  /// Create a copy of ClipboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClipboardStateCopyWith<_ClipboardState> get copyWith =>
      __$ClipboardStateCopyWithImpl<_ClipboardState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClipboardState &&
            (identical(other.copyFailureOrSuccess, copyFailureOrSuccess) ||
                other.copyFailureOrSuccess == copyFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, copyFailureOrSuccess);

  @override
  String toString() {
    return 'ClipboardState(copyFailureOrSuccess: $copyFailureOrSuccess)';
  }
}

/// @nodoc
abstract mixin class _$ClipboardStateCopyWith<$Res>
    implements $ClipboardStateCopyWith<$Res> {
  factory _$ClipboardStateCopyWith(
          _ClipboardState value, $Res Function(_ClipboardState) _then) =
      __$ClipboardStateCopyWithImpl;
  @override
  @useResult
  $Res call({Option<Either<ClipboardFailure, Unit>> copyFailureOrSuccess});
}

/// @nodoc
class __$ClipboardStateCopyWithImpl<$Res>
    implements _$ClipboardStateCopyWith<$Res> {
  __$ClipboardStateCopyWithImpl(this._self, this._then);

  final _ClipboardState _self;
  final $Res Function(_ClipboardState) _then;

  /// Create a copy of ClipboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? copyFailureOrSuccess = null,
  }) {
    return _then(_ClipboardState(
      copyFailureOrSuccess: null == copyFailureOrSuccess
          ? _self.copyFailureOrSuccess
          : copyFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ClipboardFailure, Unit>>,
    ));
  }
}

// dart format on
