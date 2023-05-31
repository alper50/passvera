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
    required TResult Function(String appKey, String appValue) encryptValue,
    required TResult Function(String appKey) deleteValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllValues,
    TResult? Function(String appKey, String appValue)? encryptValue,
    TResult? Function(String appKey)? deleteValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllValues,
    TResult Function(String appKey, String appValue)? encryptValue,
    TResult Function(String appKey)? deleteValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetKeys value) getAllValues,
    required TResult Function(_EncrpytValue value) encryptValue,
    required TResult Function(_DeleteValue value) deleteValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetKeys value)? getAllValues,
    TResult? Function(_EncrpytValue value)? encryptValue,
    TResult? Function(_DeleteValue value)? deleteValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetKeys value)? getAllValues,
    TResult Function(_EncrpytValue value)? encryptValue,
    TResult Function(_DeleteValue value)? deleteValue,
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
    required TResult Function(String appKey, String appValue) encryptValue,
    required TResult Function(String appKey) deleteValue,
  }) {
    return getAllValues();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllValues,
    TResult? Function(String appKey, String appValue)? encryptValue,
    TResult? Function(String appKey)? deleteValue,
  }) {
    return getAllValues?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllValues,
    TResult Function(String appKey, String appValue)? encryptValue,
    TResult Function(String appKey)? deleteValue,
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
    required TResult Function(_EncrpytValue value) encryptValue,
    required TResult Function(_DeleteValue value) deleteValue,
  }) {
    return getAllValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetKeys value)? getAllValues,
    TResult? Function(_EncrpytValue value)? encryptValue,
    TResult? Function(_DeleteValue value)? deleteValue,
  }) {
    return getAllValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetKeys value)? getAllValues,
    TResult Function(_EncrpytValue value)? encryptValue,
    TResult Function(_DeleteValue value)? deleteValue,
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
abstract class _$$_EncrpytValueCopyWith<$Res> {
  factory _$$_EncrpytValueCopyWith(
          _$_EncrpytValue value, $Res Function(_$_EncrpytValue) then) =
      __$$_EncrpytValueCopyWithImpl<$Res>;
  @useResult
  $Res call({String appKey, String appValue});
}

/// @nodoc
class __$$_EncrpytValueCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_EncrpytValue>
    implements _$$_EncrpytValueCopyWith<$Res> {
  __$$_EncrpytValueCopyWithImpl(
      _$_EncrpytValue _value, $Res Function(_$_EncrpytValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appKey = null,
    Object? appValue = null,
  }) {
    return _then(_$_EncrpytValue(
      appKey: null == appKey
          ? _value.appKey
          : appKey // ignore: cast_nullable_to_non_nullable
              as String,
      appValue: null == appValue
          ? _value.appValue
          : appValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EncrpytValue implements _EncrpytValue {
  const _$_EncrpytValue({required this.appKey, required this.appValue});

  @override
  final String appKey;
  @override
  final String appValue;

  @override
  String toString() {
    return 'HomeEvent.encryptValue(appKey: $appKey, appValue: $appValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EncrpytValue &&
            (identical(other.appKey, appKey) || other.appKey == appKey) &&
            (identical(other.appValue, appValue) ||
                other.appValue == appValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appKey, appValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EncrpytValueCopyWith<_$_EncrpytValue> get copyWith =>
      __$$_EncrpytValueCopyWithImpl<_$_EncrpytValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllValues,
    required TResult Function(String appKey, String appValue) encryptValue,
    required TResult Function(String appKey) deleteValue,
  }) {
    return encryptValue(appKey, appValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllValues,
    TResult? Function(String appKey, String appValue)? encryptValue,
    TResult? Function(String appKey)? deleteValue,
  }) {
    return encryptValue?.call(appKey, appValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllValues,
    TResult Function(String appKey, String appValue)? encryptValue,
    TResult Function(String appKey)? deleteValue,
    required TResult orElse(),
  }) {
    if (encryptValue != null) {
      return encryptValue(appKey, appValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetKeys value) getAllValues,
    required TResult Function(_EncrpytValue value) encryptValue,
    required TResult Function(_DeleteValue value) deleteValue,
  }) {
    return encryptValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetKeys value)? getAllValues,
    TResult? Function(_EncrpytValue value)? encryptValue,
    TResult? Function(_DeleteValue value)? deleteValue,
  }) {
    return encryptValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetKeys value)? getAllValues,
    TResult Function(_EncrpytValue value)? encryptValue,
    TResult Function(_DeleteValue value)? deleteValue,
    required TResult orElse(),
  }) {
    if (encryptValue != null) {
      return encryptValue(this);
    }
    return orElse();
  }
}

abstract class _EncrpytValue implements HomeEvent {
  const factory _EncrpytValue(
      {required final String appKey,
      required final String appValue}) = _$_EncrpytValue;

  String get appKey;
  String get appValue;
  @JsonKey(ignore: true)
  _$$_EncrpytValueCopyWith<_$_EncrpytValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteValueCopyWith<$Res> {
  factory _$$_DeleteValueCopyWith(
          _$_DeleteValue value, $Res Function(_$_DeleteValue) then) =
      __$$_DeleteValueCopyWithImpl<$Res>;
  @useResult
  $Res call({String appKey});
}

/// @nodoc
class __$$_DeleteValueCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_DeleteValue>
    implements _$$_DeleteValueCopyWith<$Res> {
  __$$_DeleteValueCopyWithImpl(
      _$_DeleteValue _value, $Res Function(_$_DeleteValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appKey = null,
  }) {
    return _then(_$_DeleteValue(
      appKey: null == appKey
          ? _value.appKey
          : appKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteValue implements _DeleteValue {
  const _$_DeleteValue({required this.appKey});

  @override
  final String appKey;

  @override
  String toString() {
    return 'HomeEvent.deleteValue(appKey: $appKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteValue &&
            (identical(other.appKey, appKey) || other.appKey == appKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteValueCopyWith<_$_DeleteValue> get copyWith =>
      __$$_DeleteValueCopyWithImpl<_$_DeleteValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllValues,
    required TResult Function(String appKey, String appValue) encryptValue,
    required TResult Function(String appKey) deleteValue,
  }) {
    return deleteValue(appKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllValues,
    TResult? Function(String appKey, String appValue)? encryptValue,
    TResult? Function(String appKey)? deleteValue,
  }) {
    return deleteValue?.call(appKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllValues,
    TResult Function(String appKey, String appValue)? encryptValue,
    TResult Function(String appKey)? deleteValue,
    required TResult orElse(),
  }) {
    if (deleteValue != null) {
      return deleteValue(appKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetKeys value) getAllValues,
    required TResult Function(_EncrpytValue value) encryptValue,
    required TResult Function(_DeleteValue value) deleteValue,
  }) {
    return deleteValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetKeys value)? getAllValues,
    TResult? Function(_EncrpytValue value)? encryptValue,
    TResult? Function(_DeleteValue value)? deleteValue,
  }) {
    return deleteValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetKeys value)? getAllValues,
    TResult Function(_EncrpytValue value)? encryptValue,
    TResult Function(_DeleteValue value)? deleteValue,
    required TResult orElse(),
  }) {
    if (deleteValue != null) {
      return deleteValue(this);
    }
    return orElse();
  }
}

abstract class _DeleteValue implements HomeEvent {
  const factory _DeleteValue({required final String appKey}) = _$_DeleteValue;

  String get appKey;
  @JsonKey(ignore: true)
  _$$_DeleteValueCopyWith<_$_DeleteValue> get copyWith =>
      throw _privateConstructorUsedError;
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
