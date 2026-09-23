// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeActionEvent {
  String get appKey => throw _privateConstructorUsedError;
  String get appValue => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  int get colorValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String appKey, String appValue, String tag, int colorValue)
        encryptValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String appKey, String appValue, String tag, int colorValue)?
        encryptValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String appKey, String appValue, String tag, int colorValue)?
        encryptValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EncryptValue value) encryptValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EncryptValue value)? encryptValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EncryptValue value)? encryptValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeActionEventCopyWith<HomeActionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeActionEventCopyWith<$Res> {
  factory $HomeActionEventCopyWith(
          HomeActionEvent value, $Res Function(HomeActionEvent) then) =
      _$HomeActionEventCopyWithImpl<$Res, HomeActionEvent>;
  @useResult
  $Res call({String appKey, String appValue, String tag, int colorValue});
}

/// @nodoc
class _$HomeActionEventCopyWithImpl<$Res, $Val extends HomeActionEvent>
    implements $HomeActionEventCopyWith<$Res> {
  _$HomeActionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appKey = null,
    Object? appValue = null,
    Object? tag = null,
    Object? colorValue = null,
  }) {
    return _then(_value.copyWith(
      appKey: null == appKey
          ? _value.appKey
          : appKey // ignore: cast_nullable_to_non_nullable
              as String,
      appValue: null == appValue
          ? _value.appValue
          : appValue // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      colorValue: null == colorValue
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EncryptValueCopyWith<$Res>
    implements $HomeActionEventCopyWith<$Res> {
  factory _$$_EncryptValueCopyWith(
          _$_EncryptValue value, $Res Function(_$_EncryptValue) then) =
      __$$_EncryptValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appKey, String appValue, String tag, int colorValue});
}

/// @nodoc
class __$$_EncryptValueCopyWithImpl<$Res>
    extends _$HomeActionEventCopyWithImpl<$Res, _$_EncryptValue>
    implements _$$_EncryptValueCopyWith<$Res> {
  __$$_EncryptValueCopyWithImpl(
      _$_EncryptValue _value, $Res Function(_$_EncryptValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appKey = null,
    Object? appValue = null,
    Object? tag = null,
    Object? colorValue = null,
  }) {
    return _then(_$_EncryptValue(
      appKey: null == appKey
          ? _value.appKey
          : appKey // ignore: cast_nullable_to_non_nullable
              as String,
      appValue: null == appValue
          ? _value.appValue
          : appValue // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      colorValue: null == colorValue
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EncryptValue implements _EncryptValue {
  const _$_EncryptValue(
      {required this.appKey,
      required this.appValue,
      required this.tag,
      required this.colorValue});

  @override
  final String appKey;
  @override
  final String appValue;
  @override
  final String tag;
  @override
  final int colorValue;

  @override
  String toString() {
    return 'HomeActionEvent.encryptValue(appKey: $appKey, appValue: $appValue, tag: $tag, colorValue: $colorValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EncryptValue &&
            (identical(other.appKey, appKey) || other.appKey == appKey) &&
            (identical(other.appValue, appValue) ||
                other.appValue == appValue) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.colorValue, colorValue) ||
                other.colorValue == colorValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appKey, appValue, tag, colorValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EncryptValueCopyWith<_$_EncryptValue> get copyWith =>
      __$$_EncryptValueCopyWithImpl<_$_EncryptValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String appKey, String appValue, String tag, int colorValue)
        encryptValue,
  }) {
    return encryptValue(appKey, appValue, tag, colorValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String appKey, String appValue, String tag, int colorValue)?
        encryptValue,
  }) {
    return encryptValue?.call(appKey, appValue, tag, colorValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String appKey, String appValue, String tag, int colorValue)?
        encryptValue,
    required TResult orElse(),
  }) {
    if (encryptValue != null) {
      return encryptValue(appKey, appValue, tag, colorValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EncryptValue value) encryptValue,
  }) {
    return encryptValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EncryptValue value)? encryptValue,
  }) {
    return encryptValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EncryptValue value)? encryptValue,
    required TResult orElse(),
  }) {
    if (encryptValue != null) {
      return encryptValue(this);
    }
    return orElse();
  }
}

abstract class _EncryptValue implements HomeActionEvent {
  const factory _EncryptValue(
      {required final String appKey,
      required final String appValue,
      required final String tag,
      required final int colorValue}) = _$_EncryptValue;

  @override
  String get appKey;
  @override
  String get appValue;
  @override
  String get tag;
  @override
  int get colorValue;
  @override
  @JsonKey(ignore: true)
  _$$_EncryptValueCopyWith<_$_EncryptValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeActionState {
  Option<Either<StorageFailure, Unit>> get verifyFailureOrSucces =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeActionStateCopyWith<HomeActionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeActionStateCopyWith<$Res> {
  factory $HomeActionStateCopyWith(
          HomeActionState value, $Res Function(HomeActionState) then) =
      _$HomeActionStateCopyWithImpl<$Res, HomeActionState>;
  @useResult
  $Res call({Option<Either<StorageFailure, Unit>> verifyFailureOrSucces});
}

/// @nodoc
class _$HomeActionStateCopyWithImpl<$Res, $Val extends HomeActionState>
    implements $HomeActionStateCopyWith<$Res> {
  _$HomeActionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyFailureOrSucces = null,
  }) {
    return _then(_value.copyWith(
      verifyFailureOrSucces: null == verifyFailureOrSucces
          ? _value.verifyFailureOrSucces
          : verifyFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeActionStateCopyWith<$Res>
    implements $HomeActionStateCopyWith<$Res> {
  factory _$$_HomeActionStateCopyWith(
          _$_HomeActionState value, $Res Function(_$_HomeActionState) then) =
      __$$_HomeActionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<Either<StorageFailure, Unit>> verifyFailureOrSucces});
}

/// @nodoc
class __$$_HomeActionStateCopyWithImpl<$Res>
    extends _$HomeActionStateCopyWithImpl<$Res, _$_HomeActionState>
    implements _$$_HomeActionStateCopyWith<$Res> {
  __$$_HomeActionStateCopyWithImpl(
      _$_HomeActionState _value, $Res Function(_$_HomeActionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyFailureOrSucces = null,
  }) {
    return _then(_$_HomeActionState(
      verifyFailureOrSucces: null == verifyFailureOrSucces
          ? _value.verifyFailureOrSucces
          : verifyFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_HomeActionState implements _HomeActionState {
  const _$_HomeActionState({required this.verifyFailureOrSucces});

  @override
  final Option<Either<StorageFailure, Unit>> verifyFailureOrSucces;

  @override
  String toString() {
    return 'HomeActionState(verifyFailureOrSucces: $verifyFailureOrSucces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeActionState &&
            (identical(other.verifyFailureOrSucces, verifyFailureOrSucces) ||
                other.verifyFailureOrSucces == verifyFailureOrSucces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyFailureOrSucces);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeActionStateCopyWith<_$_HomeActionState> get copyWith =>
      __$$_HomeActionStateCopyWithImpl<_$_HomeActionState>(this, _$identity);
}

abstract class _HomeActionState implements HomeActionState {
  const factory _HomeActionState(
      {required final Option<Either<StorageFailure, Unit>>
          verifyFailureOrSucces}) = _$_HomeActionState;

  @override
  Option<Either<StorageFailure, Unit>> get verifyFailureOrSucces;
  @override
  @JsonKey(ignore: true)
  _$$_HomeActionStateCopyWith<_$_HomeActionState> get copyWith =>
      throw _privateConstructorUsedError;
}
