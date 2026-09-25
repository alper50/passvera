// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthenticatorEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticatorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorEvent()';
  }
}

/// @nodoc
class $AuthenticatorEventCopyWith<$Res> {
  $AuthenticatorEventCopyWith(
      AuthenticatorEvent _, $Res Function(AuthenticatorEvent) __);
}

/// Adds pattern-matching-related methods to [AuthenticatorEvent].
extension AuthenticatorEventPatterns on AuthenticatorEvent {
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
    TResult Function(_LoadAll value)? loadAll,
    TResult Function(_AddFromUri value)? addFromUri,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoadAll() when loadAll != null:
        return loadAll(_that);
      case _AddFromUri() when addFromUri != null:
        return addFromUri(_that);
      case _Delete() when delete != null:
        return delete(_that);
      case _ClearMessages() when clearMessages != null:
        return clearMessages(_that);
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
    required TResult Function(_LoadAll value) loadAll,
    required TResult Function(_AddFromUri value) addFromUri,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadAll():
        return loadAll(_that);
      case _AddFromUri():
        return addFromUri(_that);
      case _Delete():
        return delete(_that);
      case _ClearMessages():
        return clearMessages(_that);
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
    TResult? Function(_LoadAll value)? loadAll,
    TResult? Function(_AddFromUri value)? addFromUri,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadAll() when loadAll != null:
        return loadAll(_that);
      case _AddFromUri() when addFromUri != null:
        return addFromUri(_that);
      case _Delete() when delete != null:
        return delete(_that);
      case _ClearMessages() when clearMessages != null:
        return clearMessages(_that);
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
    TResult Function()? loadAll,
    TResult Function(String uri)? addFromUri,
    TResult Function(String id)? delete,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoadAll() when loadAll != null:
        return loadAll();
      case _AddFromUri() when addFromUri != null:
        return addFromUri(_that.uri);
      case _Delete() when delete != null:
        return delete(_that.id);
      case _ClearMessages() when clearMessages != null:
        return clearMessages();
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
    required TResult Function() loadAll,
    required TResult Function(String uri) addFromUri,
    required TResult Function(String id) delete,
    required TResult Function() clearMessages,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadAll():
        return loadAll();
      case _AddFromUri():
        return addFromUri(_that.uri);
      case _Delete():
        return delete(_that.id);
      case _ClearMessages():
        return clearMessages();
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
    TResult? Function()? loadAll,
    TResult? Function(String uri)? addFromUri,
    TResult? Function(String id)? delete,
    TResult? Function()? clearMessages,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadAll() when loadAll != null:
        return loadAll();
      case _AddFromUri() when addFromUri != null:
        return addFromUri(_that.uri);
      case _Delete() when delete != null:
        return delete(_that.id);
      case _ClearMessages() when clearMessages != null:
        return clearMessages();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LoadAll implements AuthenticatorEvent {
  const _LoadAll();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorEvent.loadAll()';
  }
}

/// @nodoc

class _AddFromUri implements AuthenticatorEvent {
  const _AddFromUri({required this.uri});

  final String uri;

  /// Create a copy of AuthenticatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddFromUriCopyWith<_AddFromUri> get copyWith =>
      __$AddFromUriCopyWithImpl<_AddFromUri>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddFromUri &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri);

  @override
  String toString() {
    return 'AuthenticatorEvent.addFromUri(uri: $uri)';
  }
}

/// @nodoc
abstract mixin class _$AddFromUriCopyWith<$Res>
    implements $AuthenticatorEventCopyWith<$Res> {
  factory _$AddFromUriCopyWith(
          _AddFromUri value, $Res Function(_AddFromUri) _then) =
      __$AddFromUriCopyWithImpl;
  @useResult
  $Res call({String uri});
}

/// @nodoc
class __$AddFromUriCopyWithImpl<$Res> implements _$AddFromUriCopyWith<$Res> {
  __$AddFromUriCopyWithImpl(this._self, this._then);

  final _AddFromUri _self;
  final $Res Function(_AddFromUri) _then;

  /// Create a copy of AuthenticatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uri = null,
  }) {
    return _then(_AddFromUri(
      uri: null == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Delete implements AuthenticatorEvent {
  const _Delete({required this.id});

  final String id;

  /// Create a copy of AuthenticatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Delete &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'AuthenticatorEvent.delete(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$DeleteCopyWith<$Res>
    implements $AuthenticatorEventCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) _then) =
      __$DeleteCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res> implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(this._self, this._then);

  final _Delete _self;
  final $Res Function(_Delete) _then;

  /// Create a copy of AuthenticatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_Delete(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ClearMessages implements AuthenticatorEvent {
  const _ClearMessages();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorEvent.clearMessages()';
  }
}

/// @nodoc
mixin _$AuthenticatorState {
  bool get isLoading;
  List<AuthenticatorEntry> get entries;
  Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
      get loadFailureOrSuccess;
  Option<Either<AuthenticatorFailure, Unit>> get addFailureOrSuccess;
  Option<Either<AuthenticatorFailure, Unit>> get deleteFailureOrSuccess;

  /// Create a copy of AuthenticatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthenticatorStateCopyWith<AuthenticatorState> get copyWith =>
      _$AuthenticatorStateCopyWithImpl<AuthenticatorState>(
          this as AuthenticatorState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticatorState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.entries, entries) &&
            (identical(other.loadFailureOrSuccess, loadFailureOrSuccess) ||
                other.loadFailureOrSuccess == loadFailureOrSuccess) &&
            (identical(other.addFailureOrSuccess, addFailureOrSuccess) ||
                other.addFailureOrSuccess == addFailureOrSuccess) &&
            (identical(other.deleteFailureOrSuccess, deleteFailureOrSuccess) ||
                other.deleteFailureOrSuccess == deleteFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(entries),
      loadFailureOrSuccess,
      addFailureOrSuccess,
      deleteFailureOrSuccess);

  @override
  String toString() {
    return 'AuthenticatorState(isLoading: $isLoading, entries: $entries, loadFailureOrSuccess: $loadFailureOrSuccess, addFailureOrSuccess: $addFailureOrSuccess, deleteFailureOrSuccess: $deleteFailureOrSuccess)';
  }
}

/// @nodoc
abstract mixin class $AuthenticatorStateCopyWith<$Res> {
  factory $AuthenticatorStateCopyWith(
          AuthenticatorState value, $Res Function(AuthenticatorState) _then) =
      _$AuthenticatorStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      List<AuthenticatorEntry> entries,
      Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
          loadFailureOrSuccess,
      Option<Either<AuthenticatorFailure, Unit>> addFailureOrSuccess,
      Option<Either<AuthenticatorFailure, Unit>> deleteFailureOrSuccess});
}

/// @nodoc
class _$AuthenticatorStateCopyWithImpl<$Res>
    implements $AuthenticatorStateCopyWith<$Res> {
  _$AuthenticatorStateCopyWithImpl(this._self, this._then);

  final AuthenticatorState _self;
  final $Res Function(AuthenticatorState) _then;

  /// Create a copy of AuthenticatorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? entries = null,
    Object? loadFailureOrSuccess = null,
    Object? addFailureOrSuccess = null,
    Object? deleteFailureOrSuccess = null,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      entries: null == entries
          ? _self.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
      loadFailureOrSuccess: null == loadFailureOrSuccess
          ? _self.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>,
      addFailureOrSuccess: null == addFailureOrSuccess
          ? _self.addFailureOrSuccess
          : addFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, Unit>>,
      deleteFailureOrSuccess: null == deleteFailureOrSuccess
          ? _self.deleteFailureOrSuccess
          : deleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, Unit>>,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthenticatorState].
extension AuthenticatorStatePatterns on AuthenticatorState {
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
    TResult Function(_AuthenticatorState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorState() when $default != null:
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
    TResult Function(_AuthenticatorState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorState():
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
    TResult? Function(_AuthenticatorState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorState() when $default != null:
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
            bool isLoading,
            List<AuthenticatorEntry> entries,
            Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
                loadFailureOrSuccess,
            Option<Either<AuthenticatorFailure, Unit>> addFailureOrSuccess,
            Option<Either<AuthenticatorFailure, Unit>> deleteFailureOrSuccess)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorState() when $default != null:
        return $default(
            _that.isLoading,
            _that.entries,
            _that.loadFailureOrSuccess,
            _that.addFailureOrSuccess,
            _that.deleteFailureOrSuccess);
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
            bool isLoading,
            List<AuthenticatorEntry> entries,
            Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
                loadFailureOrSuccess,
            Option<Either<AuthenticatorFailure, Unit>> addFailureOrSuccess,
            Option<Either<AuthenticatorFailure, Unit>> deleteFailureOrSuccess)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorState():
        return $default(
            _that.isLoading,
            _that.entries,
            _that.loadFailureOrSuccess,
            _that.addFailureOrSuccess,
            _that.deleteFailureOrSuccess);
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
            bool isLoading,
            List<AuthenticatorEntry> entries,
            Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
                loadFailureOrSuccess,
            Option<Either<AuthenticatorFailure, Unit>> addFailureOrSuccess,
            Option<Either<AuthenticatorFailure, Unit>> deleteFailureOrSuccess)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorState() when $default != null:
        return $default(
            _that.isLoading,
            _that.entries,
            _that.loadFailureOrSuccess,
            _that.addFailureOrSuccess,
            _that.deleteFailureOrSuccess);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AuthenticatorState implements AuthenticatorState {
  const _AuthenticatorState(
      {required this.isLoading,
      required final List<AuthenticatorEntry> entries,
      required this.loadFailureOrSuccess,
      required this.addFailureOrSuccess,
      required this.deleteFailureOrSuccess})
      : _entries = entries;

  @override
  final bool isLoading;
  final List<AuthenticatorEntry> _entries;
  @override
  List<AuthenticatorEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  final Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
      loadFailureOrSuccess;
  @override
  final Option<Either<AuthenticatorFailure, Unit>> addFailureOrSuccess;
  @override
  final Option<Either<AuthenticatorFailure, Unit>> deleteFailureOrSuccess;

  /// Create a copy of AuthenticatorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthenticatorStateCopyWith<_AuthenticatorState> get copyWith =>
      __$AuthenticatorStateCopyWithImpl<_AuthenticatorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticatorState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._entries, _entries) &&
            (identical(other.loadFailureOrSuccess, loadFailureOrSuccess) ||
                other.loadFailureOrSuccess == loadFailureOrSuccess) &&
            (identical(other.addFailureOrSuccess, addFailureOrSuccess) ||
                other.addFailureOrSuccess == addFailureOrSuccess) &&
            (identical(other.deleteFailureOrSuccess, deleteFailureOrSuccess) ||
                other.deleteFailureOrSuccess == deleteFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_entries),
      loadFailureOrSuccess,
      addFailureOrSuccess,
      deleteFailureOrSuccess);

  @override
  String toString() {
    return 'AuthenticatorState(isLoading: $isLoading, entries: $entries, loadFailureOrSuccess: $loadFailureOrSuccess, addFailureOrSuccess: $addFailureOrSuccess, deleteFailureOrSuccess: $deleteFailureOrSuccess)';
  }
}

/// @nodoc
abstract mixin class _$AuthenticatorStateCopyWith<$Res>
    implements $AuthenticatorStateCopyWith<$Res> {
  factory _$AuthenticatorStateCopyWith(
          _AuthenticatorState value, $Res Function(_AuthenticatorState) _then) =
      __$AuthenticatorStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<AuthenticatorEntry> entries,
      Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
          loadFailureOrSuccess,
      Option<Either<AuthenticatorFailure, Unit>> addFailureOrSuccess,
      Option<Either<AuthenticatorFailure, Unit>> deleteFailureOrSuccess});
}

/// @nodoc
class __$AuthenticatorStateCopyWithImpl<$Res>
    implements _$AuthenticatorStateCopyWith<$Res> {
  __$AuthenticatorStateCopyWithImpl(this._self, this._then);

  final _AuthenticatorState _self;
  final $Res Function(_AuthenticatorState) _then;

  /// Create a copy of AuthenticatorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? entries = null,
    Object? loadFailureOrSuccess = null,
    Object? addFailureOrSuccess = null,
    Object? deleteFailureOrSuccess = null,
  }) {
    return _then(_AuthenticatorState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      entries: null == entries
          ? _self._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
      loadFailureOrSuccess: null == loadFailureOrSuccess
          ? _self.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>,
      addFailureOrSuccess: null == addFailureOrSuccess
          ? _self.addFailureOrSuccess
          : addFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, Unit>>,
      deleteFailureOrSuccess: null == deleteFailureOrSuccess
          ? _self.deleteFailureOrSuccess
          : deleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, Unit>>,
    ));
  }
}

// dart format on
