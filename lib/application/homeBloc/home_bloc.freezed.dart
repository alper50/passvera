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
    required TResult Function(String? tag) tagSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllValues,
    TResult? Function(String? tag)? tagSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllValues,
    TResult Function(String? tag)? tagSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetKeys value) getAllValues,
    required TResult Function(_TagSelected value) tagSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetKeys value)? getAllValues,
    TResult? Function(_TagSelected value)? tagSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetKeys value)? getAllValues,
    TResult Function(_TagSelected value)? tagSelected,
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
    required TResult Function(String? tag) tagSelected,
  }) {
    return getAllValues();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllValues,
    TResult? Function(String? tag)? tagSelected,
  }) {
    return getAllValues?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllValues,
    TResult Function(String? tag)? tagSelected,
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
    required TResult Function(_TagSelected value) tagSelected,
  }) {
    return getAllValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetKeys value)? getAllValues,
    TResult? Function(_TagSelected value)? tagSelected,
  }) {
    return getAllValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetKeys value)? getAllValues,
    TResult Function(_TagSelected value)? tagSelected,
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
abstract class _$$_TagSelectedCopyWith<$Res> {
  factory _$$_TagSelectedCopyWith(
          _$_TagSelected value, $Res Function(_$_TagSelected) then) =
      __$$_TagSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? tag});
}

/// @nodoc
class __$$_TagSelectedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_TagSelected>
    implements _$$_TagSelectedCopyWith<$Res> {
  __$$_TagSelectedCopyWithImpl(
      _$_TagSelected _value, $Res Function(_$_TagSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_$_TagSelected(
      freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TagSelected implements _TagSelected {
  const _$_TagSelected(this.tag);

  @override
  final String? tag;

  @override
  String toString() {
    return 'HomeEvent.tagSelected(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagSelected &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagSelectedCopyWith<_$_TagSelected> get copyWith =>
      __$$_TagSelectedCopyWithImpl<_$_TagSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllValues,
    required TResult Function(String? tag) tagSelected,
  }) {
    return tagSelected(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllValues,
    TResult? Function(String? tag)? tagSelected,
  }) {
    return tagSelected?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllValues,
    TResult Function(String? tag)? tagSelected,
    required TResult orElse(),
  }) {
    if (tagSelected != null) {
      return tagSelected(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetKeys value) getAllValues,
    required TResult Function(_TagSelected value) tagSelected,
  }) {
    return tagSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetKeys value)? getAllValues,
    TResult? Function(_TagSelected value)? tagSelected,
  }) {
    return tagSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetKeys value)? getAllValues,
    TResult Function(_TagSelected value)? tagSelected,
    required TResult orElse(),
  }) {
    if (tagSelected != null) {
      return tagSelected(this);
    }
    return orElse();
  }
}

abstract class _TagSelected implements HomeEvent {
  const factory _TagSelected(final String? tag) = _$_TagSelected;

  String? get tag;
  @JsonKey(ignore: true)
  _$$_TagSelectedCopyWith<_$_TagSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valuesLoading,
    required TResult Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)
        loadSucces,
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
    TResult? Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)?
        loadSucces,
    TResult? Function()? loadSuccesEmpty,
    TResult? Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valuesLoading,
    TResult Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)?
        loadSucces,
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
    required TResult Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)
        loadSucces,
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
    TResult? Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)?
        loadSucces,
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
    TResult Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)?
        loadSucces,
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
    required TResult Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)
        loadSucces,
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
    TResult? Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)?
        loadSucces,
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
    TResult Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)?
        loadSucces,
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
  $Res call(
      {List<ApplicationModel> values,
      List<ApplicationModel> allValues,
      List<String> tags,
      String? selectedTag});
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
    Object? allValues = null,
    Object? tags = null,
    Object? selectedTag = freezed,
  }) {
    return _then(_$_LoadSucces(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ApplicationModel>,
      allValues: null == allValues
          ? _value._allValues
          : allValues // ignore: cast_nullable_to_non_nullable
              as List<ApplicationModel>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedTag: freezed == selectedTag
          ? _value.selectedTag
          : selectedTag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoadSucces implements _LoadSucces {
  const _$_LoadSucces(
      {required final List<ApplicationModel> values,
      required final List<ApplicationModel> allValues,
      required final List<String> tags,
      this.selectedTag})
      : _values = values,
        _allValues = allValues,
        _tags = tags;

  final List<ApplicationModel> _values;
  @override
  List<ApplicationModel> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  final List<ApplicationModel> _allValues;
  @override
  List<ApplicationModel> get allValues {
    if (_allValues is EqualUnmodifiableListView) return _allValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allValues);
  }

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? selectedTag;

  @override
  String toString() {
    return 'HomeState.loadSucces(values: $values, allValues: $allValues, tags: $tags, selectedTag: $selectedTag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSucces &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            const DeepCollectionEquality()
                .equals(other._allValues, _allValues) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.selectedTag, selectedTag) ||
                other.selectedTag == selectedTag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_values),
      const DeepCollectionEquality().hash(_allValues),
      const DeepCollectionEquality().hash(_tags),
      selectedTag);

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
    required TResult Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)
        loadSucces,
    required TResult Function() loadSuccesEmpty,
    required TResult Function(
            Option<StorageFailure> storageFailureOrSuccessOption)
        loadFailed,
  }) {
    return loadSucces(values, allValues, tags, selectedTag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valuesLoading,
    TResult? Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)?
        loadSucces,
    TResult? Function()? loadSuccesEmpty,
    TResult? Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
  }) {
    return loadSucces?.call(values, allValues, tags, selectedTag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valuesLoading,
    TResult Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)?
        loadSucces,
    TResult Function()? loadSuccesEmpty,
    TResult Function(Option<StorageFailure> storageFailureOrSuccessOption)?
        loadFailed,
    required TResult orElse(),
  }) {
    if (loadSucces != null) {
      return loadSucces(values, allValues, tags, selectedTag);
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
  const factory _LoadSucces(
      {required final List<ApplicationModel> values,
      required final List<ApplicationModel> allValues,
      required final List<String> tags,
      final String? selectedTag}) = _$_LoadSucces;

  List<ApplicationModel> get values;
  List<ApplicationModel> get allValues;
  List<String> get tags;
  String? get selectedTag;
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
    required TResult Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)
        loadSucces,
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
    TResult? Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)?
        loadSucces,
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
    TResult Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)?
        loadSucces,
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
    required TResult Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)
        loadSucces,
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
    TResult? Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)?
        loadSucces,
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
    TResult Function(
            List<ApplicationModel> values,
            List<ApplicationModel> allValues,
            List<String> tags,
            String? selectedTag)?
        loadSucces,
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
