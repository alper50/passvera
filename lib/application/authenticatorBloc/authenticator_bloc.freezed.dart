// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function(String uri) addFromUri,
    required TResult Function(String id) delete,
    required TResult Function() clearMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function(String uri)? addFromUri,
    TResult? Function(String id)? delete,
    TResult? Function()? clearMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function(String uri)? addFromUri,
    TResult Function(String id)? delete,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAll value) loadAll,
    required TResult Function(_AddFromUri value) addFromUri,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ClearMessages value) clearMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAll value)? loadAll,
    TResult? Function(_AddFromUri value)? addFromUri,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAll value)? loadAll,
    TResult Function(_AddFromUri value)? addFromUri,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatorEventCopyWith<$Res> {
  factory $AuthenticatorEventCopyWith(
          AuthenticatorEvent value, $Res Function(AuthenticatorEvent) then) =
      _$AuthenticatorEventCopyWithImpl<$Res, AuthenticatorEvent>;
}

/// @nodoc
class _$AuthenticatorEventCopyWithImpl<$Res, $Val extends AuthenticatorEvent>
    implements $AuthenticatorEventCopyWith<$Res> {
  _$AuthenticatorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadAllCopyWith<$Res> {
  factory _$$_LoadAllCopyWith(
          _$_LoadAll value, $Res Function(_$_LoadAll) then) =
      __$$_LoadAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadAllCopyWithImpl<$Res>
    extends _$AuthenticatorEventCopyWithImpl<$Res, _$_LoadAll>
    implements _$$_LoadAllCopyWith<$Res> {
  __$$_LoadAllCopyWithImpl(_$_LoadAll _value, $Res Function(_$_LoadAll) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadAll implements _LoadAll {
  const _$_LoadAll();

  @override
  String toString() {
    return 'AuthenticatorEvent.loadAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function(String uri) addFromUri,
    required TResult Function(String id) delete,
    required TResult Function() clearMessages,
  }) {
    return loadAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function(String uri)? addFromUri,
    TResult? Function(String id)? delete,
    TResult? Function()? clearMessages,
  }) {
    return loadAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function(String uri)? addFromUri,
    TResult Function(String id)? delete,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) {
    if (loadAll != null) {
      return loadAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAll value) loadAll,
    required TResult Function(_AddFromUri value) addFromUri,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    return loadAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAll value)? loadAll,
    TResult? Function(_AddFromUri value)? addFromUri,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    return loadAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAll value)? loadAll,
    TResult Function(_AddFromUri value)? addFromUri,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    if (loadAll != null) {
      return loadAll(this);
    }
    return orElse();
  }
}

abstract class _LoadAll implements AuthenticatorEvent {
  const factory _LoadAll() = _$_LoadAll;
}

/// @nodoc
abstract class _$$_AddFromUriCopyWith<$Res> {
  factory _$$_AddFromUriCopyWith(
          _$_AddFromUri value, $Res Function(_$_AddFromUri) then) =
      __$$_AddFromUriCopyWithImpl<$Res>;
  @useResult
  $Res call({String uri});
}

/// @nodoc
class __$$_AddFromUriCopyWithImpl<$Res>
    extends _$AuthenticatorEventCopyWithImpl<$Res, _$_AddFromUri>
    implements _$$_AddFromUriCopyWith<$Res> {
  __$$_AddFromUriCopyWithImpl(
      _$_AddFromUri _value, $Res Function(_$_AddFromUri) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_$_AddFromUri(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddFromUri implements _AddFromUri {
  const _$_AddFromUri({required this.uri});

  @override
  final String uri;

  @override
  String toString() {
    return 'AuthenticatorEvent.addFromUri(uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddFromUri &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddFromUriCopyWith<_$_AddFromUri> get copyWith =>
      __$$_AddFromUriCopyWithImpl<_$_AddFromUri>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function(String uri) addFromUri,
    required TResult Function(String id) delete,
    required TResult Function() clearMessages,
  }) {
    return addFromUri(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function(String uri)? addFromUri,
    TResult? Function(String id)? delete,
    TResult? Function()? clearMessages,
  }) {
    return addFromUri?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function(String uri)? addFromUri,
    TResult Function(String id)? delete,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) {
    if (addFromUri != null) {
      return addFromUri(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAll value) loadAll,
    required TResult Function(_AddFromUri value) addFromUri,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    return addFromUri(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAll value)? loadAll,
    TResult? Function(_AddFromUri value)? addFromUri,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    return addFromUri?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAll value)? loadAll,
    TResult Function(_AddFromUri value)? addFromUri,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    if (addFromUri != null) {
      return addFromUri(this);
    }
    return orElse();
  }
}

abstract class _AddFromUri implements AuthenticatorEvent {
  const factory _AddFromUri({required final String uri}) = _$_AddFromUri;

  String get uri;
  @JsonKey(ignore: true)
  _$$_AddFromUriCopyWith<_$_AddFromUri> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$AuthenticatorEventCopyWithImpl<$Res, _$_Delete>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_Delete(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AuthenticatorEvent.delete(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function(String uri) addFromUri,
    required TResult Function(String id) delete,
    required TResult Function() clearMessages,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function(String uri)? addFromUri,
    TResult? Function(String id)? delete,
    TResult? Function()? clearMessages,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function(String uri)? addFromUri,
    TResult Function(String id)? delete,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAll value) loadAll,
    required TResult Function(_AddFromUri value) addFromUri,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAll value)? loadAll,
    TResult? Function(_AddFromUri value)? addFromUri,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAll value)? loadAll,
    TResult Function(_AddFromUri value)? addFromUri,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements AuthenticatorEvent {
  const factory _Delete({required final String id}) = _$_Delete;

  String get id;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearMessagesCopyWith<$Res> {
  factory _$$_ClearMessagesCopyWith(
          _$_ClearMessages value, $Res Function(_$_ClearMessages) then) =
      __$$_ClearMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearMessagesCopyWithImpl<$Res>
    extends _$AuthenticatorEventCopyWithImpl<$Res, _$_ClearMessages>
    implements _$$_ClearMessagesCopyWith<$Res> {
  __$$_ClearMessagesCopyWithImpl(
      _$_ClearMessages _value, $Res Function(_$_ClearMessages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearMessages implements _ClearMessages {
  const _$_ClearMessages();

  @override
  String toString() {
    return 'AuthenticatorEvent.clearMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function(String uri) addFromUri,
    required TResult Function(String id) delete,
    required TResult Function() clearMessages,
  }) {
    return clearMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function(String uri)? addFromUri,
    TResult? Function(String id)? delete,
    TResult? Function()? clearMessages,
  }) {
    return clearMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function(String uri)? addFromUri,
    TResult Function(String id)? delete,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) {
    if (clearMessages != null) {
      return clearMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAll value) loadAll,
    required TResult Function(_AddFromUri value) addFromUri,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    return clearMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAll value)? loadAll,
    TResult? Function(_AddFromUri value)? addFromUri,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    return clearMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAll value)? loadAll,
    TResult Function(_AddFromUri value)? addFromUri,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    if (clearMessages != null) {
      return clearMessages(this);
    }
    return orElse();
  }
}

abstract class _ClearMessages implements AuthenticatorEvent {
  const factory _ClearMessages() = _$_ClearMessages;
}

/// @nodoc
mixin _$AuthenticatorState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<AuthenticatorEntry> get entries => throw _privateConstructorUsedError;
  Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
      get loadFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<AuthenticatorFailure, Unit>> get addFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<AuthenticatorFailure, Unit>> get deleteFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticatorStateCopyWith<AuthenticatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatorStateCopyWith<$Res> {
  factory $AuthenticatorStateCopyWith(
          AuthenticatorState value, $Res Function(AuthenticatorState) then) =
      _$AuthenticatorStateCopyWithImpl<$Res, AuthenticatorState>;
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
class _$AuthenticatorStateCopyWithImpl<$Res, $Val extends AuthenticatorState>
    implements $AuthenticatorStateCopyWith<$Res> {
  _$AuthenticatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? entries = null,
    Object? loadFailureOrSuccess = null,
    Object? addFailureOrSuccess = null,
    Object? deleteFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      entries: null == entries
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
      loadFailureOrSuccess: null == loadFailureOrSuccess
          ? _value.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>,
      addFailureOrSuccess: null == addFailureOrSuccess
          ? _value.addFailureOrSuccess
          : addFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, Unit>>,
      deleteFailureOrSuccess: null == deleteFailureOrSuccess
          ? _value.deleteFailureOrSuccess
          : deleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticatorStateCopyWith<$Res>
    implements $AuthenticatorStateCopyWith<$Res> {
  factory _$$_AuthenticatorStateCopyWith(_$_AuthenticatorState value,
          $Res Function(_$_AuthenticatorState) then) =
      __$$_AuthenticatorStateCopyWithImpl<$Res>;
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
class __$$_AuthenticatorStateCopyWithImpl<$Res>
    extends _$AuthenticatorStateCopyWithImpl<$Res, _$_AuthenticatorState>
    implements _$$_AuthenticatorStateCopyWith<$Res> {
  __$$_AuthenticatorStateCopyWithImpl(
      _$_AuthenticatorState _value, $Res Function(_$_AuthenticatorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? entries = null,
    Object? loadFailureOrSuccess = null,
    Object? addFailureOrSuccess = null,
    Object? deleteFailureOrSuccess = null,
  }) {
    return _then(_$_AuthenticatorState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
      loadFailureOrSuccess: null == loadFailureOrSuccess
          ? _value.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>,
      addFailureOrSuccess: null == addFailureOrSuccess
          ? _value.addFailureOrSuccess
          : addFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, Unit>>,
      deleteFailureOrSuccess: null == deleteFailureOrSuccess
          ? _value.deleteFailureOrSuccess
          : deleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticatorFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AuthenticatorState implements _AuthenticatorState {
  const _$_AuthenticatorState(
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

  @override
  String toString() {
    return 'AuthenticatorState(isLoading: $isLoading, entries: $entries, loadFailureOrSuccess: $loadFailureOrSuccess, addFailureOrSuccess: $addFailureOrSuccess, deleteFailureOrSuccess: $deleteFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatorState &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatorStateCopyWith<_$_AuthenticatorState> get copyWith =>
      __$$_AuthenticatorStateCopyWithImpl<_$_AuthenticatorState>(
          this, _$identity);
}

abstract class _AuthenticatorState implements AuthenticatorState {
  const factory _AuthenticatorState(
      {required final bool isLoading,
      required final List<AuthenticatorEntry> entries,
      required final Option<
              Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
          loadFailureOrSuccess,
      required final Option<Either<AuthenticatorFailure, Unit>>
          addFailureOrSuccess,
      required final Option<Either<AuthenticatorFailure, Unit>>
          deleteFailureOrSuccess}) = _$_AuthenticatorState;

  @override
  bool get isLoading;
  @override
  List<AuthenticatorEntry> get entries;
  @override
  Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
      get loadFailureOrSuccess;
  @override
  Option<Either<AuthenticatorFailure, Unit>> get addFailureOrSuccess;
  @override
  Option<Either<AuthenticatorFailure, Unit>> get deleteFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatorStateCopyWith<_$_AuthenticatorState> get copyWith =>
      throw _privateConstructorUsedError;
}
