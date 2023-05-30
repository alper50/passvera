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
  List<ApplicationModel> get values => throw _privateConstructorUsedError;
  bool get isValuesLoading => throw _privateConstructorUsedError;
  bool get isValueEncrypting => throw _privateConstructorUsedError;
  bool get isValueDeleting => throw _privateConstructorUsedError;
  Option<StorageFailure> get storageFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<ApplicationModel> values,
      bool isValuesLoading,
      bool isValueEncrypting,
      bool isValueDeleting,
      Option<StorageFailure> storageFailureOrSuccessOption});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? isValuesLoading = null,
    Object? isValueEncrypting = null,
    Object? isValueDeleting = null,
    Object? storageFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ApplicationModel>,
      isValuesLoading: null == isValuesLoading
          ? _value.isValuesLoading
          : isValuesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isValueEncrypting: null == isValueEncrypting
          ? _value.isValueEncrypting
          : isValueEncrypting // ignore: cast_nullable_to_non_nullable
              as bool,
      isValueDeleting: null == isValueDeleting
          ? _value.isValueDeleting
          : isValueDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
      storageFailureOrSuccessOption: null == storageFailureOrSuccessOption
          ? _value.storageFailureOrSuccessOption
          : storageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<StorageFailure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ApplicationModel> values,
      bool isValuesLoading,
      bool isValueEncrypting,
      bool isValueDeleting,
      Option<StorageFailure> storageFailureOrSuccessOption});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? isValuesLoading = null,
    Object? isValueEncrypting = null,
    Object? isValueDeleting = null,
    Object? storageFailureOrSuccessOption = null,
  }) {
    return _then(_$_HomeState(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ApplicationModel>,
      isValuesLoading: null == isValuesLoading
          ? _value.isValuesLoading
          : isValuesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isValueEncrypting: null == isValueEncrypting
          ? _value.isValueEncrypting
          : isValueEncrypting // ignore: cast_nullable_to_non_nullable
              as bool,
      isValueDeleting: null == isValueDeleting
          ? _value.isValueDeleting
          : isValueDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
      storageFailureOrSuccessOption: null == storageFailureOrSuccessOption
          ? _value.storageFailureOrSuccessOption
          : storageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<StorageFailure>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required final List<ApplicationModel> values,
      required this.isValuesLoading,
      required this.isValueEncrypting,
      required this.isValueDeleting,
      required this.storageFailureOrSuccessOption})
      : _values = values;

  final List<ApplicationModel> _values;
  @override
  List<ApplicationModel> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  final bool isValuesLoading;
  @override
  final bool isValueEncrypting;
  @override
  final bool isValueDeleting;
  @override
  final Option<StorageFailure> storageFailureOrSuccessOption;

  @override
  String toString() {
    return 'HomeState(values: $values, isValuesLoading: $isValuesLoading, isValueEncrypting: $isValueEncrypting, isValueDeleting: $isValueDeleting, storageFailureOrSuccessOption: $storageFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.isValuesLoading, isValuesLoading) ||
                other.isValuesLoading == isValuesLoading) &&
            (identical(other.isValueEncrypting, isValueEncrypting) ||
                other.isValueEncrypting == isValueEncrypting) &&
            (identical(other.isValueDeleting, isValueDeleting) ||
                other.isValueDeleting == isValueDeleting) &&
            (identical(other.storageFailureOrSuccessOption,
                    storageFailureOrSuccessOption) ||
                other.storageFailureOrSuccessOption ==
                    storageFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_values),
      isValuesLoading,
      isValueEncrypting,
      isValueDeleting,
      storageFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<ApplicationModel> values,
      required final bool isValuesLoading,
      required final bool isValueEncrypting,
      required final bool isValueDeleting,
      required final Option<StorageFailure>
          storageFailureOrSuccessOption}) = _$_HomeState;

  @override
  List<ApplicationModel> get values;
  @override
  bool get isValuesLoading;
  @override
  bool get isValueEncrypting;
  @override
  bool get isValueDeleting;
  @override
  Option<StorageFailure> get storageFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
