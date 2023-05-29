// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StorageFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() insufficientPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? insufficientPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? insufficientPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageFailureCopyWith<$Res> {
  factory $StorageFailureCopyWith(
          StorageFailure value, $Res Function(StorageFailure) then) =
      _$StorageFailureCopyWithImpl<$Res, StorageFailure>;
}

/// @nodoc
class _$StorageFailureCopyWithImpl<$Res, $Val extends StorageFailure>
    implements $StorageFailureCopyWith<$Res> {
  _$StorageFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$StorageFailureCopyWithImpl<$Res, _$_Unexpected>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_Unexpected(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'StorageFailure.unexpected(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unexpected &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      __$$_UnexpectedCopyWithImpl<_$_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() insufficientPermission,
  }) {
    return unexpected(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? insufficientPermission,
  }) {
    return unexpected?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? insufficientPermission,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements StorageFailure {
  const factory _Unexpected(final dynamic e) = _$_Unexpected;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InsufficientPermissionCopyWith<$Res> {
  factory _$$_InsufficientPermissionCopyWith(_$_InsufficientPermission value,
          $Res Function(_$_InsufficientPermission) then) =
      __$$_InsufficientPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InsufficientPermissionCopyWithImpl<$Res>
    extends _$StorageFailureCopyWithImpl<$Res, _$_InsufficientPermission>
    implements _$$_InsufficientPermissionCopyWith<$Res> {
  __$$_InsufficientPermissionCopyWithImpl(_$_InsufficientPermission _value,
      $Res Function(_$_InsufficientPermission) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InsufficientPermission implements _InsufficientPermission {
  const _$_InsufficientPermission();

  @override
  String toString() {
    return 'StorageFailure.insufficientPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsufficientPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic e) unexpected,
    required TResult Function() insufficientPermission,
  }) {
    return insufficientPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic e)? unexpected,
    TResult? Function()? insufficientPermission,
  }) {
    return insufficientPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic e)? unexpected,
    TResult Function()? insufficientPermission,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
  }) {
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
  }) {
    return insufficientPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermission implements StorageFailure {
  const factory _InsufficientPermission() = _$_InsufficientPermission;
}
