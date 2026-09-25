// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pass_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassActionEvent {
  ApplicationModel get pass;

  /// Create a copy of PassActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassActionEventCopyWith<PassActionEvent> get copyWith =>
      _$PassActionEventCopyWithImpl<PassActionEvent>(
          this as PassActionEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PassActionEvent &&
            (identical(other.pass, pass) || other.pass == pass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pass);

  @override
  String toString() {
    return 'PassActionEvent(pass: $pass)';
  }
}

/// @nodoc
abstract mixin class $PassActionEventCopyWith<$Res> {
  factory $PassActionEventCopyWith(
          PassActionEvent value, $Res Function(PassActionEvent) _then) =
      _$PassActionEventCopyWithImpl;
  @useResult
  $Res call({ApplicationModel pass});

  $ApplicationModelCopyWith<$Res> get pass;
}

/// @nodoc
class _$PassActionEventCopyWithImpl<$Res>
    implements $PassActionEventCopyWith<$Res> {
  _$PassActionEventCopyWithImpl(this._self, this._then);

  final PassActionEvent _self;
  final $Res Function(PassActionEvent) _then;

  /// Create a copy of PassActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pass = null,
  }) {
    return _then(_self.copyWith(
      pass: null == pass
          ? _self.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as ApplicationModel,
    ));
  }

  /// Create a copy of PassActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApplicationModelCopyWith<$Res> get pass {
    return $ApplicationModelCopyWith<$Res>(_self.pass, (value) {
      return _then(_self.copyWith(pass: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PassActionEvent].
extension PassActionEventPatterns on PassActionEvent {
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
    TResult Function(_DeletePass value)? deletePass,
    TResult Function(_UpdatePass value)? updatePass,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeletePass() when deletePass != null:
        return deletePass(_that);
      case _UpdatePass() when updatePass != null:
        return updatePass(_that);
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
    required TResult Function(_DeletePass value) deletePass,
    required TResult Function(_UpdatePass value) updatePass,
  }) {
    final _that = this;
    switch (_that) {
      case _DeletePass():
        return deletePass(_that);
      case _UpdatePass():
        return updatePass(_that);
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
    TResult? Function(_DeletePass value)? deletePass,
    TResult? Function(_UpdatePass value)? updatePass,
  }) {
    final _that = this;
    switch (_that) {
      case _DeletePass() when deletePass != null:
        return deletePass(_that);
      case _UpdatePass() when updatePass != null:
        return updatePass(_that);
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
    TResult Function(ApplicationModel pass)? deletePass,
    TResult Function(ApplicationModel pass, String oldKey)? updatePass,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeletePass() when deletePass != null:
        return deletePass(_that.pass);
      case _UpdatePass() when updatePass != null:
        return updatePass(_that.pass, _that.oldKey);
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
    required TResult Function(ApplicationModel pass) deletePass,
    required TResult Function(ApplicationModel pass, String oldKey) updatePass,
  }) {
    final _that = this;
    switch (_that) {
      case _DeletePass():
        return deletePass(_that.pass);
      case _UpdatePass():
        return updatePass(_that.pass, _that.oldKey);
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
    TResult? Function(ApplicationModel pass)? deletePass,
    TResult? Function(ApplicationModel pass, String oldKey)? updatePass,
  }) {
    final _that = this;
    switch (_that) {
      case _DeletePass() when deletePass != null:
        return deletePass(_that.pass);
      case _UpdatePass() when updatePass != null:
        return updatePass(_that.pass, _that.oldKey);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DeletePass implements PassActionEvent {
  const _DeletePass({required this.pass});

  @override
  final ApplicationModel pass;

  /// Create a copy of PassActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeletePassCopyWith<_DeletePass> get copyWith =>
      __$DeletePassCopyWithImpl<_DeletePass>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeletePass &&
            (identical(other.pass, pass) || other.pass == pass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pass);

  @override
  String toString() {
    return 'PassActionEvent.deletePass(pass: $pass)';
  }
}

/// @nodoc
abstract mixin class _$DeletePassCopyWith<$Res>
    implements $PassActionEventCopyWith<$Res> {
  factory _$DeletePassCopyWith(
          _DeletePass value, $Res Function(_DeletePass) _then) =
      __$DeletePassCopyWithImpl;
  @override
  @useResult
  $Res call({ApplicationModel pass});

  @override
  $ApplicationModelCopyWith<$Res> get pass;
}

/// @nodoc
class __$DeletePassCopyWithImpl<$Res> implements _$DeletePassCopyWith<$Res> {
  __$DeletePassCopyWithImpl(this._self, this._then);

  final _DeletePass _self;
  final $Res Function(_DeletePass) _then;

  /// Create a copy of PassActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pass = null,
  }) {
    return _then(_DeletePass(
      pass: null == pass
          ? _self.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as ApplicationModel,
    ));
  }

  /// Create a copy of PassActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApplicationModelCopyWith<$Res> get pass {
    return $ApplicationModelCopyWith<$Res>(_self.pass, (value) {
      return _then(_self.copyWith(pass: value));
    });
  }
}

/// @nodoc

class _UpdatePass implements PassActionEvent {
  const _UpdatePass({required this.pass, required this.oldKey});

  @override
  final ApplicationModel pass;
  final String oldKey;

  /// Create a copy of PassActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePassCopyWith<_UpdatePass> get copyWith =>
      __$UpdatePassCopyWithImpl<_UpdatePass>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePass &&
            (identical(other.pass, pass) || other.pass == pass) &&
            (identical(other.oldKey, oldKey) || other.oldKey == oldKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pass, oldKey);

  @override
  String toString() {
    return 'PassActionEvent.updatePass(pass: $pass, oldKey: $oldKey)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePassCopyWith<$Res>
    implements $PassActionEventCopyWith<$Res> {
  factory _$UpdatePassCopyWith(
          _UpdatePass value, $Res Function(_UpdatePass) _then) =
      __$UpdatePassCopyWithImpl;
  @override
  @useResult
  $Res call({ApplicationModel pass, String oldKey});

  @override
  $ApplicationModelCopyWith<$Res> get pass;
}

/// @nodoc
class __$UpdatePassCopyWithImpl<$Res> implements _$UpdatePassCopyWith<$Res> {
  __$UpdatePassCopyWithImpl(this._self, this._then);

  final _UpdatePass _self;
  final $Res Function(_UpdatePass) _then;

  /// Create a copy of PassActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pass = null,
    Object? oldKey = null,
  }) {
    return _then(_UpdatePass(
      pass: null == pass
          ? _self.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as ApplicationModel,
      oldKey: null == oldKey
          ? _self.oldKey
          : oldKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of PassActionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApplicationModelCopyWith<$Res> get pass {
    return $ApplicationModelCopyWith<$Res>(_self.pass, (value) {
      return _then(_self.copyWith(pass: value));
    });
  }
}

/// @nodoc
mixin _$PassActionState {
  Option<Either<StorageFailure, Unit>> get deleteFailureOrSucces;
  Option<Either<StorageFailure, Unit>> get updateFailureOrSucces;

  /// Create a copy of PassActionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassActionStateCopyWith<PassActionState> get copyWith =>
      _$PassActionStateCopyWithImpl<PassActionState>(
          this as PassActionState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PassActionState &&
            (identical(other.deleteFailureOrSucces, deleteFailureOrSucces) ||
                other.deleteFailureOrSucces == deleteFailureOrSucces) &&
            (identical(other.updateFailureOrSucces, updateFailureOrSucces) ||
                other.updateFailureOrSucces == updateFailureOrSucces));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, deleteFailureOrSucces, updateFailureOrSucces);

  @override
  String toString() {
    return 'PassActionState(deleteFailureOrSucces: $deleteFailureOrSucces, updateFailureOrSucces: $updateFailureOrSucces)';
  }
}

/// @nodoc
abstract mixin class $PassActionStateCopyWith<$Res> {
  factory $PassActionStateCopyWith(
          PassActionState value, $Res Function(PassActionState) _then) =
      _$PassActionStateCopyWithImpl;
  @useResult
  $Res call(
      {Option<Either<StorageFailure, Unit>> deleteFailureOrSucces,
      Option<Either<StorageFailure, Unit>> updateFailureOrSucces});
}

/// @nodoc
class _$PassActionStateCopyWithImpl<$Res>
    implements $PassActionStateCopyWith<$Res> {
  _$PassActionStateCopyWithImpl(this._self, this._then);

  final PassActionState _self;
  final $Res Function(PassActionState) _then;

  /// Create a copy of PassActionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteFailureOrSucces = null,
    Object? updateFailureOrSucces = null,
  }) {
    return _then(_self.copyWith(
      deleteFailureOrSucces: null == deleteFailureOrSucces
          ? _self.deleteFailureOrSucces
          : deleteFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
      updateFailureOrSucces: null == updateFailureOrSucces
          ? _self.updateFailureOrSucces
          : updateFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PassActionState].
extension PassActionStatePatterns on PassActionState {
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
    TResult Function(_PassActionState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PassActionState() when $default != null:
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
    TResult Function(_PassActionState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PassActionState():
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
    TResult? Function(_PassActionState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PassActionState() when $default != null:
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
    TResult Function(Option<Either<StorageFailure, Unit>> deleteFailureOrSucces,
            Option<Either<StorageFailure, Unit>> updateFailureOrSucces)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PassActionState() when $default != null:
        return $default(
            _that.deleteFailureOrSucces, _that.updateFailureOrSucces);
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
    TResult Function(Option<Either<StorageFailure, Unit>> deleteFailureOrSucces,
            Option<Either<StorageFailure, Unit>> updateFailureOrSucces)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PassActionState():
        return $default(
            _that.deleteFailureOrSucces, _that.updateFailureOrSucces);
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
            Option<Either<StorageFailure, Unit>> deleteFailureOrSucces,
            Option<Either<StorageFailure, Unit>> updateFailureOrSucces)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PassActionState() when $default != null:
        return $default(
            _that.deleteFailureOrSucces, _that.updateFailureOrSucces);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PassActionState implements PassActionState {
  const _PassActionState(
      {required this.deleteFailureOrSucces,
      required this.updateFailureOrSucces});

  @override
  final Option<Either<StorageFailure, Unit>> deleteFailureOrSucces;
  @override
  final Option<Either<StorageFailure, Unit>> updateFailureOrSucces;

  /// Create a copy of PassActionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PassActionStateCopyWith<_PassActionState> get copyWith =>
      __$PassActionStateCopyWithImpl<_PassActionState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PassActionState &&
            (identical(other.deleteFailureOrSucces, deleteFailureOrSucces) ||
                other.deleteFailureOrSucces == deleteFailureOrSucces) &&
            (identical(other.updateFailureOrSucces, updateFailureOrSucces) ||
                other.updateFailureOrSucces == updateFailureOrSucces));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, deleteFailureOrSucces, updateFailureOrSucces);

  @override
  String toString() {
    return 'PassActionState(deleteFailureOrSucces: $deleteFailureOrSucces, updateFailureOrSucces: $updateFailureOrSucces)';
  }
}

/// @nodoc
abstract mixin class _$PassActionStateCopyWith<$Res>
    implements $PassActionStateCopyWith<$Res> {
  factory _$PassActionStateCopyWith(
          _PassActionState value, $Res Function(_PassActionState) _then) =
      __$PassActionStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Option<Either<StorageFailure, Unit>> deleteFailureOrSucces,
      Option<Either<StorageFailure, Unit>> updateFailureOrSucces});
}

/// @nodoc
class __$PassActionStateCopyWithImpl<$Res>
    implements _$PassActionStateCopyWith<$Res> {
  __$PassActionStateCopyWithImpl(this._self, this._then);

  final _PassActionState _self;
  final $Res Function(_PassActionState) _then;

  /// Create a copy of PassActionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deleteFailureOrSucces = null,
    Object? updateFailureOrSucces = null,
  }) {
    return _then(_PassActionState(
      deleteFailureOrSucces: null == deleteFailureOrSucces
          ? _self.deleteFailureOrSucces
          : deleteFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
      updateFailureOrSucces: null == updateFailureOrSucces
          ? _self.updateFailureOrSucces
          : updateFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
    ));
  }
}

// dart format on
