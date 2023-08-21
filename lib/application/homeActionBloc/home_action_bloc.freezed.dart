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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appKey, String appValue) encryptValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String appKey, String appValue)? encryptValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appKey, String appValue)? encryptValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EncrpytValue value) encryptValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EncrpytValue value)? encryptValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EncrpytValue value)? encryptValue,
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
  $Res call({String appKey, String appValue});
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EncrpytValueCopyWith<$Res>
    implements $HomeActionEventCopyWith<$Res> {
  factory _$$_EncrpytValueCopyWith(
          _$_EncrpytValue value, $Res Function(_$_EncrpytValue) then) =
      __$$_EncrpytValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appKey, String appValue});
}

/// @nodoc
class __$$_EncrpytValueCopyWithImpl<$Res>
    extends _$HomeActionEventCopyWithImpl<$Res, _$_EncrpytValue>
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
    return 'HomeActionEvent.encryptValue(appKey: $appKey, appValue: $appValue)';
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
    required TResult Function(String appKey, String appValue) encryptValue,
  }) {
    return encryptValue(appKey, appValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String appKey, String appValue)? encryptValue,
  }) {
    return encryptValue?.call(appKey, appValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appKey, String appValue)? encryptValue,
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
    required TResult Function(_EncrpytValue value) encryptValue,
  }) {
    return encryptValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EncrpytValue value)? encryptValue,
  }) {
    return encryptValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EncrpytValue value)? encryptValue,
    required TResult orElse(),
  }) {
    if (encryptValue != null) {
      return encryptValue(this);
    }
    return orElse();
  }
}

abstract class _EncrpytValue implements HomeActionEvent {
  const factory _EncrpytValue(
      {required final String appKey,
      required final String appValue}) = _$_EncrpytValue;

  @override
  String get appKey;
  @override
  String get appValue;
  @override
  @JsonKey(ignore: true)
  _$$_EncrpytValueCopyWith<_$_EncrpytValue> get copyWith =>
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
abstract class _$$_InitialCopyWith<$Res>
    implements $HomeActionStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<Either<StorageFailure, Unit>> verifyFailureOrSucces});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeActionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyFailureOrSucces = null,
  }) {
    return _then(_$_Initial(
      verifyFailureOrSucces: null == verifyFailureOrSucces
          ? _value.verifyFailureOrSucces
          : verifyFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.verifyFailureOrSucces});

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
            other is _$_Initial &&
            (identical(other.verifyFailureOrSucces, verifyFailureOrSucces) ||
                other.verifyFailureOrSucces == verifyFailureOrSucces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyFailureOrSucces);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeActionState {
  const factory _Initial(
      {required final Option<Either<StorageFailure, Unit>>
          verifyFailureOrSucces}) = _$_Initial;

  @override
  Option<Either<StorageFailure, Unit>> get verifyFailureOrSucces;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
