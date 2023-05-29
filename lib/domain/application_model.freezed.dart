// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplicationModel {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationModelCopyWith<ApplicationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationModelCopyWith<$Res> {
  factory $ApplicationModelCopyWith(
          ApplicationModel value, $Res Function(ApplicationModel) then) =
      _$ApplicationModelCopyWithImpl<$Res, ApplicationModel>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$ApplicationModelCopyWithImpl<$Res, $Val extends ApplicationModel>
    implements $ApplicationModelCopyWith<$Res> {
  _$ApplicationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApplicationModelCopyWith<$Res>
    implements $ApplicationModelCopyWith<$Res> {
  factory _$$_ApplicationModelCopyWith(
          _$_ApplicationModel value, $Res Function(_$_ApplicationModel) then) =
      __$$_ApplicationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$_ApplicationModelCopyWithImpl<$Res>
    extends _$ApplicationModelCopyWithImpl<$Res, _$_ApplicationModel>
    implements _$$_ApplicationModelCopyWith<$Res> {
  __$$_ApplicationModelCopyWithImpl(
      _$_ApplicationModel _value, $Res Function(_$_ApplicationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$_ApplicationModel(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApplicationModel implements _ApplicationModel {
  const _$_ApplicationModel({required this.key, required this.value});

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'ApplicationModel(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationModel &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationModelCopyWith<_$_ApplicationModel> get copyWith =>
      __$$_ApplicationModelCopyWithImpl<_$_ApplicationModel>(this, _$identity);
}

abstract class _ApplicationModel implements ApplicationModel {
  const factory _ApplicationModel(
      {required final String key,
      required final String value}) = _$_ApplicationModel;

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationModelCopyWith<_$_ApplicationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
