// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent()';
  }
}

/// @nodoc
class $HomeEventCopyWith<$Res> {
  $HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}

/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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
    TResult Function(_GetKeys value)? getAllValues,
    TResult Function(_TagSelected value)? tagSelected,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetKeys() when getAllValues != null:
        return getAllValues(_that);
      case _TagSelected() when tagSelected != null:
        return tagSelected(_that);
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
    required TResult Function(_GetKeys value) getAllValues,
    required TResult Function(_TagSelected value) tagSelected,
  }) {
    final _that = this;
    switch (_that) {
      case _GetKeys():
        return getAllValues(_that);
      case _TagSelected():
        return tagSelected(_that);
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
    TResult? Function(_GetKeys value)? getAllValues,
    TResult? Function(_TagSelected value)? tagSelected,
  }) {
    final _that = this;
    switch (_that) {
      case _GetKeys() when getAllValues != null:
        return getAllValues(_that);
      case _TagSelected() when tagSelected != null:
        return tagSelected(_that);
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
    TResult Function()? getAllValues,
    TResult Function(String? tag)? tagSelected,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetKeys() when getAllValues != null:
        return getAllValues();
      case _TagSelected() when tagSelected != null:
        return tagSelected(_that.tag);
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
    required TResult Function() getAllValues,
    required TResult Function(String? tag) tagSelected,
  }) {
    final _that = this;
    switch (_that) {
      case _GetKeys():
        return getAllValues();
      case _TagSelected():
        return tagSelected(_that.tag);
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
    TResult? Function()? getAllValues,
    TResult? Function(String? tag)? tagSelected,
  }) {
    final _that = this;
    switch (_that) {
      case _GetKeys() when getAllValues != null:
        return getAllValues();
      case _TagSelected() when tagSelected != null:
        return tagSelected(_that.tag);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetKeys implements HomeEvent {
  const _GetKeys();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetKeys);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent.getAllValues()';
  }
}

/// @nodoc

class _TagSelected implements HomeEvent {
  const _TagSelected(this.tag);

  final String? tag;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TagSelectedCopyWith<_TagSelected> get copyWith =>
      __$TagSelectedCopyWithImpl<_TagSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TagSelected &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag);

  @override
  String toString() {
    return 'HomeEvent.tagSelected(tag: $tag)';
  }
}

/// @nodoc
abstract mixin class _$TagSelectedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$TagSelectedCopyWith(
          _TagSelected value, $Res Function(_TagSelected) _then) =
      __$TagSelectedCopyWithImpl;
  @useResult
  $Res call({String? tag});
}

/// @nodoc
class __$TagSelectedCopyWithImpl<$Res> implements _$TagSelectedCopyWith<$Res> {
  __$TagSelectedCopyWithImpl(this._self, this._then);

  final _TagSelected _self;
  final $Res Function(_TagSelected) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_TagSelected(
      freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$HomeState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState()';
  }
}

/// @nodoc
class $HomeStateCopyWith<$Res> {
  $HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}

/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult Function(_LoadSucces value)? loadSucces,
    TResult Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _LoadingFarmOverviews() when valuesLoading != null:
        return valuesLoading(_that);
      case _LoadSucces() when loadSucces != null:
        return loadSucces(_that);
      case _LoadSuccesEmpty() when loadSuccesEmpty != null:
        return loadSuccesEmpty(_that);
      case _LoadFailed() when loadFailed != null:
        return loadFailed(_that);
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFarmOverviews value) valuesLoading,
    required TResult Function(_LoadSucces value) loadSucces,
    required TResult Function(_LoadSuccesEmpty value) loadSuccesEmpty,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _LoadingFarmOverviews():
        return valuesLoading(_that);
      case _LoadSucces():
        return loadSucces(_that);
      case _LoadSuccesEmpty():
        return loadSuccesEmpty(_that);
      case _LoadFailed():
        return loadFailed(_that);
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFarmOverviews value)? valuesLoading,
    TResult? Function(_LoadSucces value)? loadSucces,
    TResult? Function(_LoadSuccesEmpty value)? loadSuccesEmpty,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _LoadingFarmOverviews() when valuesLoading != null:
        return valuesLoading(_that);
      case _LoadSucces() when loadSucces != null:
        return loadSucces(_that);
      case _LoadSuccesEmpty() when loadSuccesEmpty != null:
        return loadSuccesEmpty(_that);
      case _LoadFailed() when loadFailed != null:
        return loadFailed(_that);
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
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _LoadingFarmOverviews() when valuesLoading != null:
        return valuesLoading();
      case _LoadSucces() when loadSucces != null:
        return loadSucces(
            _that.values, _that.allValues, _that.tags, _that.selectedTag);
      case _LoadSuccesEmpty() when loadSuccesEmpty != null:
        return loadSuccesEmpty();
      case _LoadFailed() when loadFailed != null:
        return loadFailed(_that.storageFailureOrSuccessOption);
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
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _LoadingFarmOverviews():
        return valuesLoading();
      case _LoadSucces():
        return loadSucces(
            _that.values, _that.allValues, _that.tags, _that.selectedTag);
      case _LoadSuccesEmpty():
        return loadSuccesEmpty();
      case _LoadFailed():
        return loadFailed(_that.storageFailureOrSuccessOption);
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
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _LoadingFarmOverviews() when valuesLoading != null:
        return valuesLoading();
      case _LoadSucces() when loadSucces != null:
        return loadSucces(
            _that.values, _that.allValues, _that.tags, _that.selectedTag);
      case _LoadSuccesEmpty() when loadSuccesEmpty != null:
        return loadSuccesEmpty();
      case _LoadFailed() when loadFailed != null:
        return loadFailed(_that.storageFailureOrSuccessOption);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements HomeState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState.initial()';
  }
}

/// @nodoc

class _LoadingFarmOverviews implements HomeState {
  const _LoadingFarmOverviews();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingFarmOverviews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState.valuesLoading()';
  }
}

/// @nodoc

class _LoadSucces implements HomeState {
  const _LoadSucces(
      {required final List<ApplicationModel> values,
      required final List<ApplicationModel> allValues,
      required final List<String> tags,
      this.selectedTag})
      : _values = values,
        _allValues = allValues,
        _tags = tags;

  final List<ApplicationModel> _values;
  List<ApplicationModel> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  final List<ApplicationModel> _allValues;
  List<ApplicationModel> get allValues {
    if (_allValues is EqualUnmodifiableListView) return _allValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allValues);
  }

  final List<String> _tags;
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final String? selectedTag;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadSuccesCopyWith<_LoadSucces> get copyWith =>
      __$LoadSuccesCopyWithImpl<_LoadSucces>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSucces &&
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

  @override
  String toString() {
    return 'HomeState.loadSucces(values: $values, allValues: $allValues, tags: $tags, selectedTag: $selectedTag)';
  }
}

/// @nodoc
abstract mixin class _$LoadSuccesCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$LoadSuccesCopyWith(
          _LoadSucces value, $Res Function(_LoadSucces) _then) =
      __$LoadSuccesCopyWithImpl;
  @useResult
  $Res call(
      {List<ApplicationModel> values,
      List<ApplicationModel> allValues,
      List<String> tags,
      String? selectedTag});
}

/// @nodoc
class __$LoadSuccesCopyWithImpl<$Res> implements _$LoadSuccesCopyWith<$Res> {
  __$LoadSuccesCopyWithImpl(this._self, this._then);

  final _LoadSucces _self;
  final $Res Function(_LoadSucces) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? values = null,
    Object? allValues = null,
    Object? tags = null,
    Object? selectedTag = freezed,
  }) {
    return _then(_LoadSucces(
      values: null == values
          ? _self._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ApplicationModel>,
      allValues: null == allValues
          ? _self._allValues
          : allValues // ignore: cast_nullable_to_non_nullable
              as List<ApplicationModel>,
      tags: null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedTag: freezed == selectedTag
          ? _self.selectedTag
          : selectedTag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _LoadSuccesEmpty implements HomeState {
  const _LoadSuccesEmpty();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadSuccesEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState.loadSuccesEmpty()';
  }
}

/// @nodoc

class _LoadFailed implements HomeState {
  const _LoadFailed({required this.storageFailureOrSuccessOption});

  final Option<StorageFailure> storageFailureOrSuccessOption;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadFailedCopyWith<_LoadFailed> get copyWith =>
      __$LoadFailedCopyWithImpl<_LoadFailed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailed &&
            (identical(other.storageFailureOrSuccessOption,
                    storageFailureOrSuccessOption) ||
                other.storageFailureOrSuccessOption ==
                    storageFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storageFailureOrSuccessOption);

  @override
  String toString() {
    return 'HomeState.loadFailed(storageFailureOrSuccessOption: $storageFailureOrSuccessOption)';
  }
}

/// @nodoc
abstract mixin class _$LoadFailedCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$LoadFailedCopyWith(
          _LoadFailed value, $Res Function(_LoadFailed) _then) =
      __$LoadFailedCopyWithImpl;
  @useResult
  $Res call({Option<StorageFailure> storageFailureOrSuccessOption});
}

/// @nodoc
class __$LoadFailedCopyWithImpl<$Res> implements _$LoadFailedCopyWith<$Res> {
  __$LoadFailedCopyWithImpl(this._self, this._then);

  final _LoadFailed _self;
  final $Res Function(_LoadFailed) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? storageFailureOrSuccessOption = null,
  }) {
    return _then(_LoadFailed(
      storageFailureOrSuccessOption: null == storageFailureOrSuccessOption
          ? _self.storageFailureOrSuccessOption
          : storageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<StorageFailure>,
    ));
  }
}

// dart format on
