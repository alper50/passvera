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
    required TResult Function() valuesLoading,
    required TResult Function(List<ApplicationModel> values) loadSucces,
    required TResult Function() loadSuccesEmpty,
    required TResult Function(
            Option<StorageFailure> storageFailureOrSuccessOption)
        loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valuesLoading,
    TResult? Function(List<ApplicationModel> values)? loadSucces,
    TResult? Function()? loadSuccesEmpty,
    TResult? Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valuesLoading,
    TResult Function(List<ApplicationModel> values)? loadSucces,
    TResult Function()? loadSuccesEmpty,
    TResult Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFarmOverviews value) valuesLoading,
    required TResult Function(_LoadSucces value) loadSucces,
    required TResult Function(_LoadSuccesEmpty value) loadSuccesEmpty,
    required TResult Function(_LoadFailed value) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult? Function(_LoadSucces value)? loadSucces,
    TResult? Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult Function(_LoadSucces value)? loadSucces,
    TResult Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult Function(_LoadFailed value)? loadFailed,
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
    required TResult Function() valuesLoading,
    required TResult Function(List<ApplicationModel> values) loadSucces,
    required TResult Function() loadSuccesEmpty,
    required TResult Function(
            Option<StorageFailure> storageFailureOrSuccessOption)
        loadFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valuesLoading,
    TResult? Function(List<ApplicationModel> values)? loadSucces,
    TResult? Function()? loadSuccesEmpty,
    TResult? Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valuesLoading,
    TResult Function(List<ApplicationModel> values)? loadSucces,
    TResult Function()? loadSuccesEmpty,
    TResult Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
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
    required TResult Function(_LoadingFarmOverviews value) valuesLoading,
    required TResult Function(_LoadSucces value) loadSucces,
    required TResult Function(_LoadSuccesEmpty value) loadSuccesEmpty,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult? Function(_LoadSucces value)? loadSucces,
    TResult? Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult Function(_LoadSucces value)? loadSucces,
    TResult Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult Function(_LoadFailed value)? loadFailed,
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
abstract class _$$_LoadingFarmOverviewsCopyWith<$Res> {
  factory _$$_LoadingFarmOverviewsCopyWith(_$_LoadingFarmOverviews value,
          $Res Function(_$_LoadingFarmOverviews) then) =
      __$$_LoadingFarmOverviewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingFarmOverviewsCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_LoadingFarmOverviews>
    implements _$$_LoadingFarmOverviewsCopyWith<$Res> {
  __$$_LoadingFarmOverviewsCopyWithImpl(_$_LoadingFarmOverviews _value,
      $Res Function(_$_LoadingFarmOverviews) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingFarmOverviews implements _LoadingFarmOverviews {
  const _$_LoadingFarmOverviews();

  @override
  String toString() {
    return 'HomeState.valuesLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingFarmOverviews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valuesLoading,
    required TResult Function(List<ApplicationModel> values) loadSucces,
    required TResult Function() loadSuccesEmpty,
    required TResult Function(
            Option<StorageFailure> storageFailureOrSuccessOption)
        loadFailed,
  }) {
    return valuesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valuesLoading,
    TResult? Function(List<ApplicationModel> values)? loadSucces,
    TResult? Function()? loadSuccesEmpty,
    TResult? Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
  }) {
    return valuesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valuesLoading,
    TResult Function(List<ApplicationModel> values)? loadSucces,
    TResult Function()? loadSuccesEmpty,
    TResult Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
    required TResult orElse(),
  }) {
    if (valuesLoading != null) {
      return valuesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFarmOverviews value) valuesLoading,
    required TResult Function(_LoadSucces value) loadSucces,
    required TResult Function(_LoadSuccesEmpty value) loadSuccesEmpty,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return valuesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult? Function(_LoadSucces value)? loadSucces,
    TResult? Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return valuesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult Function(_LoadSucces value)? loadSucces,
    TResult Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (valuesLoading != null) {
      return valuesLoading(this);
    }
    return orElse();
  }
}

abstract class _LoadingFarmOverviews implements HomeState {
  const factory _LoadingFarmOverviews() = _$_LoadingFarmOverviews;
}

/// @nodoc
abstract class _$$_LoadSuccesCopyWith<$Res> {
  factory _$$_LoadSuccesCopyWith(
          _$_LoadSucces value, $Res Function(_$_LoadSucces) then) =
      __$$_LoadSuccesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ApplicationModel> values});
}

/// @nodoc
class __$$_LoadSuccesCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_LoadSucces>
    implements _$$_LoadSuccesCopyWith<$Res> {
  __$$_LoadSuccesCopyWithImpl(
      _$_LoadSucces _value, $Res Function(_$_LoadSucces) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$_LoadSucces(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ApplicationModel>,
    ));
  }
}

/// @nodoc

class _$_LoadSucces implements _LoadSucces {
  const _$_LoadSucces({required final List<ApplicationModel> values})
      : _values = values;

  final List<ApplicationModel> _values;
  @override
  List<ApplicationModel> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'HomeState.loadSucces(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSucces &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccesCopyWith<_$_LoadSucces> get copyWith =>
      __$$_LoadSuccesCopyWithImpl<_$_LoadSucces>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valuesLoading,
    required TResult Function(List<ApplicationModel> values) loadSucces,
    required TResult Function() loadSuccesEmpty,
    required TResult Function(
            Option<StorageFailure> storageFailureOrSuccessOption)
        loadFailed,
  }) {
    return loadSucces(values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valuesLoading,
    TResult? Function(List<ApplicationModel> values)? loadSucces,
    TResult? Function()? loadSuccesEmpty,
    TResult? Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
  }) {
    return loadSucces?.call(values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valuesLoading,
    TResult Function(List<ApplicationModel> values)? loadSucces,
    TResult Function()? loadSuccesEmpty,
    TResult Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
    required TResult orElse(),
  }) {
    if (loadSucces != null) {
      return loadSucces(values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFarmOverviews value) valuesLoading,
    required TResult Function(_LoadSucces value) loadSucces,
    required TResult Function(_LoadSuccesEmpty value) loadSuccesEmpty,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return loadSucces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult? Function(_LoadSucces value)? loadSucces,
    TResult? Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return loadSucces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult Function(_LoadSucces value)? loadSucces,
    TResult Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadSucces != null) {
      return loadSucces(this);
    }
    return orElse();
  }
}

abstract class _LoadSucces implements HomeState {
  const factory _LoadSucces({required final List<ApplicationModel> values}) =
      _$_LoadSucces;

  List<ApplicationModel> get values;
  @JsonKey(ignore: true)
  _$$_LoadSuccesCopyWith<_$_LoadSucces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccesEmptyCopyWith<$Res> {
  factory _$$_LoadSuccesEmptyCopyWith(
          _$_LoadSuccesEmpty value, $Res Function(_$_LoadSuccesEmpty) then) =
      __$$_LoadSuccesEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadSuccesEmptyCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_LoadSuccesEmpty>
    implements _$$_LoadSuccesEmptyCopyWith<$Res> {
  __$$_LoadSuccesEmptyCopyWithImpl(
      _$_LoadSuccesEmpty _value, $Res Function(_$_LoadSuccesEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadSuccesEmpty implements _LoadSuccesEmpty {
  const _$_LoadSuccesEmpty();

  @override
  String toString() {
    return 'HomeState.loadSuccesEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadSuccesEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valuesLoading,
    required TResult Function(List<ApplicationModel> values) loadSucces,
    required TResult Function() loadSuccesEmpty,
    required TResult Function(
            Option<StorageFailure> storageFailureOrSuccessOption)
        loadFailed,
  }) {
    return loadSuccesEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valuesLoading,
    TResult? Function(List<ApplicationModel> values)? loadSucces,
    TResult? Function()? loadSuccesEmpty,
    TResult? Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
  }) {
    return loadSuccesEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valuesLoading,
    TResult Function(List<ApplicationModel> values)? loadSucces,
    TResult Function()? loadSuccesEmpty,
    TResult Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
    required TResult orElse(),
  }) {
    if (loadSuccesEmpty != null) {
      return loadSuccesEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFarmOverviews value) valuesLoading,
    required TResult Function(_LoadSucces value) loadSucces,
    required TResult Function(_LoadSuccesEmpty value) loadSuccesEmpty,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return loadSuccesEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult? Function(_LoadSucces value)? loadSucces,
    TResult? Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return loadSuccesEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult Function(_LoadSucces value)? loadSucces,
    TResult Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadSuccesEmpty != null) {
      return loadSuccesEmpty(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccesEmpty implements HomeState {
  const factory _LoadSuccesEmpty() = _$_LoadSuccesEmpty;
}

/// @nodoc
abstract class _$$_LoadFailedCopyWith<$Res> {
  factory _$$_LoadFailedCopyWith(
          _$_LoadFailed value, $Res Function(_$_LoadFailed) then) =
      __$$_LoadFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<StorageFailure> storageFailureOrSuccessOption});
}

/// @nodoc
class __$$_LoadFailedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_LoadFailed>
    implements _$$_LoadFailedCopyWith<$Res> {
  __$$_LoadFailedCopyWithImpl(
      _$_LoadFailed _value, $Res Function(_$_LoadFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storageFailureOrSuccessOption = null,
  }) {
    return _then(_$_LoadFailed(
      storageFailureOrSuccessOption: null == storageFailureOrSuccessOption
          ? _value.storageFailureOrSuccessOption
          : storageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<StorageFailure>,
    ));
  }
}

/// @nodoc

class _$_LoadFailed implements _LoadFailed {
  const _$_LoadFailed({required this.storageFailureOrSuccessOption});

  @override
  final Option<StorageFailure> storageFailureOrSuccessOption;

  @override
  String toString() {
    return 'HomeState.loadFailed(storageFailureOrSuccessOption: $storageFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailed &&
            (identical(other.storageFailureOrSuccessOption,
                    storageFailureOrSuccessOption) ||
                other.storageFailureOrSuccessOption ==
                    storageFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storageFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailedCopyWith<_$_LoadFailed> get copyWith =>
      __$$_LoadFailedCopyWithImpl<_$_LoadFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valuesLoading,
    required TResult Function(List<ApplicationModel> values) loadSucces,
    required TResult Function() loadSuccesEmpty,
    required TResult Function(
            Option<StorageFailure> storageFailureOrSuccessOption)
        loadFailed,
  }) {
    return loadFailed(storageFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valuesLoading,
    TResult? Function(List<ApplicationModel> values)? loadSucces,
    TResult? Function()? loadSuccesEmpty,
    TResult? Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
  }) {
    return loadFailed?.call(storageFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valuesLoading,
    TResult Function(List<ApplicationModel> values)? loadSucces,
    TResult Function()? loadSuccesEmpty,
    TResult Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(storageFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFarmOverviews value) valuesLoading,
    required TResult Function(_LoadSucces value) loadSucces,
    required TResult Function(_LoadSuccesEmpty value) loadSuccesEmpty,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return loadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult? Function(_LoadSucces value)? loadSucces,
    TResult? Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return loadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult Function(_LoadSucces value)? loadSucces,
    TResult Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadFailed implements HomeState {
  const factory _LoadFailed(
      {required final Option<StorageFailure>
          storageFailureOrSuccessOption}) = _$_LoadFailed;

  Option<StorageFailure> get storageFailureOrSuccessOption;
  @JsonKey(ignore: true)
  _$$_LoadFailedCopyWith<_$_LoadFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
