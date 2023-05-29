// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetKeys value) getAllValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetKeys value)? getAllValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetKeys value)? getAllValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetKeysCopyWith<$Res> {
  factory _$$_GetKeysCopyWith(
          _$_GetKeys value, $Res Function(_$_GetKeys) then) =
      __$$_GetKeysCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetKeysCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetKeys>
    implements _$$_GetKeysCopyWith<$Res> {
  __$$_GetKeysCopyWithImpl(_$_GetKeys _value, $Res Function(_$_GetKeys) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetKeys implements _GetKeys {
  const _$_GetKeys();

  @override
  String toString() {
    return 'HomeEvent.getAllValues()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetKeys);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllValues,
  }) {
    return getAllValues();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllValues,
  }) {
    return getAllValues?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllValues,
    required TResult orElse(),
  }) {
    if (getAllValues != null) {
      return getAllValues();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetKeys value) getAllValues,
  }) {
    return getAllValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetKeys value)? getAllValues,
  }) {
    return getAllValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetKeys value)? getAllValues,
    required TResult orElse(),
  }) {
    if (getAllValues != null) {
      return getAllValues(this);
    }
    return orElse();
  }
}

abstract class _GetKeys implements HomeEvent {
  const factory _GetKeys() = _$_GetKeys;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() keysLoading,
    required TResult Function(List<ApplicationModel> models) keysLoadSucces,
    required TResult Function(dynamic e) keysLoadFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? keysLoading,
    TResult? Function(List<ApplicationModel> models)? keysLoadSucces,
    TResult? Function(dynamic e)? keysLoadFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? keysLoading,
    TResult Function(List<ApplicationModel> models)? keysLoadSucces,
    TResult Function(dynamic e)? keysLoadFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_KeysLoading value) keysLoading,
    required TResult Function(_KeysLoadSucces value) keysLoadSucces,
    required TResult Function(_KeysLoadFail value) keysLoadFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_KeysLoading value)? keysLoading,
    TResult? Function(_KeysLoadSucces value)? keysLoadSucces,
    TResult? Function(_KeysLoadFail value)? keysLoadFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_KeysLoading value)? keysLoading,
    TResult Function(_KeysLoadSucces value)? keysLoadSucces,
    TResult Function(_KeysLoadFail value)? keysLoadFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() keysLoading,
    required TResult Function(List<ApplicationModel> models) keysLoadSucces,
    required TResult Function(dynamic e) keysLoadFail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? keysLoading,
    TResult? Function(List<ApplicationModel> models)? keysLoadSucces,
    TResult? Function(dynamic e)? keysLoadFail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? keysLoading,
    TResult Function(List<ApplicationModel> models)? keysLoadSucces,
    TResult Function(dynamic e)? keysLoadFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_KeysLoading value) keysLoading,
    required TResult Function(_KeysLoadSucces value) keysLoadSucces,
    required TResult Function(_KeysLoadFail value) keysLoadFail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_KeysLoading value)? keysLoading,
    TResult? Function(_KeysLoadSucces value)? keysLoadSucces,
    TResult? Function(_KeysLoadFail value)? keysLoadFail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_KeysLoading value)? keysLoading,
    TResult Function(_KeysLoadSucces value)? keysLoadSucces,
    TResult Function(_KeysLoadFail value)? keysLoadFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_KeysLoadingCopyWith<$Res> {
  factory _$$_KeysLoadingCopyWith(
          _$_KeysLoading value, $Res Function(_$_KeysLoading) then) =
      __$$_KeysLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_KeysLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_KeysLoading>
    implements _$$_KeysLoadingCopyWith<$Res> {
  __$$_KeysLoadingCopyWithImpl(
      _$_KeysLoading _value, $Res Function(_$_KeysLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_KeysLoading implements _KeysLoading {
  const _$_KeysLoading();

  @override
  String toString() {
    return 'HomeState.keysLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_KeysLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() keysLoading,
    required TResult Function(List<ApplicationModel> models) keysLoadSucces,
    required TResult Function(dynamic e) keysLoadFail,
  }) {
    return keysLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? keysLoading,
    TResult? Function(List<ApplicationModel> models)? keysLoadSucces,
    TResult? Function(dynamic e)? keysLoadFail,
  }) {
    return keysLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? keysLoading,
    TResult Function(List<ApplicationModel> models)? keysLoadSucces,
    TResult Function(dynamic e)? keysLoadFail,
    required TResult orElse(),
  }) {
    if (keysLoading != null) {
      return keysLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_KeysLoading value) keysLoading,
    required TResult Function(_KeysLoadSucces value) keysLoadSucces,
    required TResult Function(_KeysLoadFail value) keysLoadFail,
  }) {
    return keysLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_KeysLoading value)? keysLoading,
    TResult? Function(_KeysLoadSucces value)? keysLoadSucces,
    TResult? Function(_KeysLoadFail value)? keysLoadFail,
  }) {
    return keysLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_KeysLoading value)? keysLoading,
    TResult Function(_KeysLoadSucces value)? keysLoadSucces,
    TResult Function(_KeysLoadFail value)? keysLoadFail,
    required TResult orElse(),
  }) {
    if (keysLoading != null) {
      return keysLoading(this);
    }
    return orElse();
  }
}

abstract class _KeysLoading implements HomeState {
  const factory _KeysLoading() = _$_KeysLoading;
}

/// @nodoc
abstract class _$$_KeysLoadSuccesCopyWith<$Res> {
  factory _$$_KeysLoadSuccesCopyWith(
          _$_KeysLoadSucces value, $Res Function(_$_KeysLoadSucces) then) =
      __$$_KeysLoadSuccesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ApplicationModel> models});
}

/// @nodoc
class __$$_KeysLoadSuccesCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_KeysLoadSucces>
    implements _$$_KeysLoadSuccesCopyWith<$Res> {
  __$$_KeysLoadSuccesCopyWithImpl(
      _$_KeysLoadSucces _value, $Res Function(_$_KeysLoadSucces) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
  }) {
    return _then(_$_KeysLoadSucces(
      models: null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<ApplicationModel>,
    ));
  }
}

/// @nodoc

class _$_KeysLoadSucces implements _KeysLoadSucces {
  const _$_KeysLoadSucces({required final List<ApplicationModel> models})
      : _models = models;

  final List<ApplicationModel> _models;
  @override
  List<ApplicationModel> get models {
    if (_models is EqualUnmodifiableListView) return _models;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  String toString() {
    return 'HomeState.keysLoadSucces(models: $models)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeysLoadSucces &&
            const DeepCollectionEquality().equals(other._models, _models));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_models));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeysLoadSuccesCopyWith<_$_KeysLoadSucces> get copyWith =>
      __$$_KeysLoadSuccesCopyWithImpl<_$_KeysLoadSucces>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() keysLoading,
    required TResult Function(List<ApplicationModel> models) keysLoadSucces,
    required TResult Function(dynamic e) keysLoadFail,
  }) {
    return keysLoadSucces(models);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? keysLoading,
    TResult? Function(List<ApplicationModel> models)? keysLoadSucces,
    TResult? Function(dynamic e)? keysLoadFail,
  }) {
    return keysLoadSucces?.call(models);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? keysLoading,
    TResult Function(List<ApplicationModel> models)? keysLoadSucces,
    TResult Function(dynamic e)? keysLoadFail,
    required TResult orElse(),
  }) {
    if (keysLoadSucces != null) {
      return keysLoadSucces(models);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_KeysLoading value) keysLoading,
    required TResult Function(_KeysLoadSucces value) keysLoadSucces,
    required TResult Function(_KeysLoadFail value) keysLoadFail,
  }) {
    return keysLoadSucces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_KeysLoading value)? keysLoading,
    TResult? Function(_KeysLoadSucces value)? keysLoadSucces,
    TResult? Function(_KeysLoadFail value)? keysLoadFail,
  }) {
    return keysLoadSucces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_KeysLoading value)? keysLoading,
    TResult Function(_KeysLoadSucces value)? keysLoadSucces,
    TResult Function(_KeysLoadFail value)? keysLoadFail,
    required TResult orElse(),
  }) {
    if (keysLoadSucces != null) {
      return keysLoadSucces(this);
    }
    return orElse();
  }
}

abstract class _KeysLoadSucces implements HomeState {
  const factory _KeysLoadSucces(
      {required final List<ApplicationModel> models}) = _$_KeysLoadSucces;

  List<ApplicationModel> get models;
  @JsonKey(ignore: true)
  _$$_KeysLoadSuccesCopyWith<_$_KeysLoadSucces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_KeysLoadFailCopyWith<$Res> {
  factory _$$_KeysLoadFailCopyWith(
          _$_KeysLoadFail value, $Res Function(_$_KeysLoadFail) then) =
      __$$_KeysLoadFailCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$_KeysLoadFailCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_KeysLoadFail>
    implements _$$_KeysLoadFailCopyWith<$Res> {
  __$$_KeysLoadFailCopyWithImpl(
      _$_KeysLoadFail _value, $Res Function(_$_KeysLoadFail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_KeysLoadFail(
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_KeysLoadFail implements _KeysLoadFail {
  const _$_KeysLoadFail({required this.e});

  @override
  final dynamic e;

  @override
  String toString() {
    return 'HomeState.keysLoadFail(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeysLoadFail &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeysLoadFailCopyWith<_$_KeysLoadFail> get copyWith =>
      __$$_KeysLoadFailCopyWithImpl<_$_KeysLoadFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() keysLoading,
    required TResult Function(List<ApplicationModel> models) keysLoadSucces,
    required TResult Function(dynamic e) keysLoadFail,
  }) {
    return keysLoadFail(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? keysLoading,
    TResult? Function(List<ApplicationModel> models)? keysLoadSucces,
    TResult? Function(dynamic e)? keysLoadFail,
  }) {
    return keysLoadFail?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? keysLoading,
    TResult Function(List<ApplicationModel> models)? keysLoadSucces,
    TResult Function(dynamic e)? keysLoadFail,
    required TResult orElse(),
  }) {
    if (keysLoadFail != null) {
      return keysLoadFail(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_KeysLoading value) keysLoading,
    required TResult Function(_KeysLoadSucces value) keysLoadSucces,
    required TResult Function(_KeysLoadFail value) keysLoadFail,
  }) {
    return keysLoadFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_KeysLoading value)? keysLoading,
    TResult? Function(_KeysLoadSucces value)? keysLoadSucces,
    TResult? Function(_KeysLoadFail value)? keysLoadFail,
  }) {
    return keysLoadFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_KeysLoading value)? keysLoading,
    TResult Function(_KeysLoadSucces value)? keysLoadSucces,
    TResult Function(_KeysLoadFail value)? keysLoadFail,
    required TResult orElse(),
  }) {
    if (keysLoadFail != null) {
      return keysLoadFail(this);
    }
    return orElse();
  }
}

abstract class _KeysLoadFail implements HomeState {
  const factory _KeysLoadFail({required final dynamic e}) = _$_KeysLoadFail;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_KeysLoadFailCopyWith<_$_KeysLoadFail> get copyWith =>
      throw _privateConstructorUsedError;
}
