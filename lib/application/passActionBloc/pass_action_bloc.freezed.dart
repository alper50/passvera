// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pass_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PassActionEvent {
  ApplicationModel get pass => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplicationModel pass) deletePass,
    required TResult Function(ApplicationModel pass) updatePass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApplicationModel pass)? deletePass,
    TResult? Function(ApplicationModel pass)? updatePass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplicationModel pass)? deletePass,
    TResult Function(ApplicationModel pass)? updatePass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletePass value) deletePass,
    required TResult Function(_UpdatePass value) updatePass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeletePass value)? deletePass,
    TResult? Function(_UpdatePass value)? updatePass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletePass value)? deletePass,
    TResult Function(_UpdatePass value)? updatePass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PassActionEventCopyWith<PassActionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassActionEventCopyWith<$Res> {
  factory $PassActionEventCopyWith(
          PassActionEvent value, $Res Function(PassActionEvent) then) =
      _$PassActionEventCopyWithImpl<$Res, PassActionEvent>;
  @useResult
  $Res call({ApplicationModel pass});

  $ApplicationModelCopyWith<$Res> get pass;
}

/// @nodoc
class _$PassActionEventCopyWithImpl<$Res, $Val extends PassActionEvent>
    implements $PassActionEventCopyWith<$Res> {
  _$PassActionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pass = null,
  }) {
    return _then(_value.copyWith(
      pass: null == pass
          ? _value.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as ApplicationModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplicationModelCopyWith<$Res> get pass {
    return $ApplicationModelCopyWith<$Res>(_value.pass, (value) {
      return _then(_value.copyWith(pass: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeletePassCopyWith<$Res>
    implements $PassActionEventCopyWith<$Res> {
  factory _$$_DeletePassCopyWith(
          _$_DeletePass value, $Res Function(_$_DeletePass) then) =
      __$$_DeletePassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApplicationModel pass});

  @override
  $ApplicationModelCopyWith<$Res> get pass;
}

/// @nodoc
class __$$_DeletePassCopyWithImpl<$Res>
    extends _$PassActionEventCopyWithImpl<$Res, _$_DeletePass>
    implements _$$_DeletePassCopyWith<$Res> {
  __$$_DeletePassCopyWithImpl(
      _$_DeletePass _value, $Res Function(_$_DeletePass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pass = null,
  }) {
    return _then(_$_DeletePass(
      pass: null == pass
          ? _value.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as ApplicationModel,
    ));
  }
}

/// @nodoc

class _$_DeletePass implements _DeletePass {
  const _$_DeletePass({required this.pass});

  @override
  final ApplicationModel pass;

  @override
  String toString() {
    return 'PassActionEvent.deletePass(pass: $pass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePass &&
            (identical(other.pass, pass) || other.pass == pass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletePassCopyWith<_$_DeletePass> get copyWith =>
      __$$_DeletePassCopyWithImpl<_$_DeletePass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplicationModel pass) deletePass,
    required TResult Function(ApplicationModel pass) updatePass,
  }) {
    return deletePass(pass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApplicationModel pass)? deletePass,
    TResult? Function(ApplicationModel pass)? updatePass,
  }) {
    return deletePass?.call(pass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplicationModel pass)? deletePass,
    TResult Function(ApplicationModel pass)? updatePass,
    required TResult orElse(),
  }) {
    if (deletePass != null) {
      return deletePass(pass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletePass value) deletePass,
    required TResult Function(_UpdatePass value) updatePass,
  }) {
    return deletePass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeletePass value)? deletePass,
    TResult? Function(_UpdatePass value)? updatePass,
  }) {
    return deletePass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletePass value)? deletePass,
    TResult Function(_UpdatePass value)? updatePass,
    required TResult orElse(),
  }) {
    if (deletePass != null) {
      return deletePass(this);
    }
    return orElse();
  }
}

abstract class _DeletePass implements PassActionEvent {
  const factory _DeletePass({required final ApplicationModel pass}) =
      _$_DeletePass;

  @override
  ApplicationModel get pass;
  @override
  @JsonKey(ignore: true)
  _$$_DeletePassCopyWith<_$_DeletePass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePassCopyWith<$Res>
    implements $PassActionEventCopyWith<$Res> {
  factory _$$_UpdatePassCopyWith(
          _$_UpdatePass value, $Res Function(_$_UpdatePass) then) =
      __$$_UpdatePassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApplicationModel pass});

  @override
  $ApplicationModelCopyWith<$Res> get pass;
}

/// @nodoc
class __$$_UpdatePassCopyWithImpl<$Res>
    extends _$PassActionEventCopyWithImpl<$Res, _$_UpdatePass>
    implements _$$_UpdatePassCopyWith<$Res> {
  __$$_UpdatePassCopyWithImpl(
      _$_UpdatePass _value, $Res Function(_$_UpdatePass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pass = null,
  }) {
    return _then(_$_UpdatePass(
      pass: null == pass
          ? _value.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as ApplicationModel,
    ));
  }
}

/// @nodoc

class _$_UpdatePass implements _UpdatePass {
  const _$_UpdatePass({required this.pass});

  @override
  final ApplicationModel pass;

  @override
  String toString() {
    return 'PassActionEvent.updatePass(pass: $pass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePass &&
            (identical(other.pass, pass) || other.pass == pass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePassCopyWith<_$_UpdatePass> get copyWith =>
      __$$_UpdatePassCopyWithImpl<_$_UpdatePass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplicationModel pass) deletePass,
    required TResult Function(ApplicationModel pass) updatePass,
  }) {
    return updatePass(pass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApplicationModel pass)? deletePass,
    TResult? Function(ApplicationModel pass)? updatePass,
  }) {
    return updatePass?.call(pass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplicationModel pass)? deletePass,
    TResult Function(ApplicationModel pass)? updatePass,
    required TResult orElse(),
  }) {
    if (updatePass != null) {
      return updatePass(pass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletePass value) deletePass,
    required TResult Function(_UpdatePass value) updatePass,
  }) {
    return updatePass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeletePass value)? deletePass,
    TResult? Function(_UpdatePass value)? updatePass,
  }) {
    return updatePass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletePass value)? deletePass,
    TResult Function(_UpdatePass value)? updatePass,
    required TResult orElse(),
  }) {
    if (updatePass != null) {
      return updatePass(this);
    }
    return orElse();
  }
}

abstract class _UpdatePass implements PassActionEvent {
  const factory _UpdatePass({required final ApplicationModel pass}) =
      _$_UpdatePass;

  @override
  ApplicationModel get pass;
  @override
  @JsonKey(ignore: true)
  _$$_UpdatePassCopyWith<_$_UpdatePass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PassActionState {
  Option<Either<StorageFailure, Unit>> get deleteFailureOrSucces =>
      throw _privateConstructorUsedError;
  Option<Either<StorageFailure, Unit>> get updateFailureOrSucces =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PassActionStateCopyWith<PassActionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassActionStateCopyWith<$Res> {
  factory $PassActionStateCopyWith(
          PassActionState value, $Res Function(PassActionState) then) =
      _$PassActionStateCopyWithImpl<$Res, PassActionState>;
  @useResult
  $Res call(
      {Option<Either<StorageFailure, Unit>> deleteFailureOrSucces,
      Option<Either<StorageFailure, Unit>> updateFailureOrSucces});
}

/// @nodoc
class _$PassActionStateCopyWithImpl<$Res, $Val extends PassActionState>
    implements $PassActionStateCopyWith<$Res> {
  _$PassActionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteFailureOrSucces = null,
    Object? updateFailureOrSucces = null,
  }) {
    return _then(_value.copyWith(
      deleteFailureOrSucces: null == deleteFailureOrSucces
          ? _value.deleteFailureOrSucces
          : deleteFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
      updateFailureOrSucces: null == updateFailureOrSucces
          ? _value.updateFailureOrSucces
          : updateFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $PassActionStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<StorageFailure, Unit>> deleteFailureOrSucces,
      Option<Either<StorageFailure, Unit>> updateFailureOrSucces});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PassActionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteFailureOrSucces = null,
    Object? updateFailureOrSucces = null,
  }) {
    return _then(_$_Initial(
      deleteFailureOrSucces: null == deleteFailureOrSucces
          ? _value.deleteFailureOrSucces
          : deleteFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
      updateFailureOrSucces: null == updateFailureOrSucces
          ? _value.updateFailureOrSucces
          : updateFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<StorageFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.deleteFailureOrSucces,
      required this.updateFailureOrSucces});

  @override
  final Option<Either<StorageFailure, Unit>> deleteFailureOrSucces;
  @override
  final Option<Either<StorageFailure, Unit>> updateFailureOrSucces;

  @override
  String toString() {
    return 'PassActionState(deleteFailureOrSucces: $deleteFailureOrSucces, updateFailureOrSucces: $updateFailureOrSucces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.deleteFailureOrSucces, deleteFailureOrSucces) ||
                other.deleteFailureOrSucces == deleteFailureOrSucces) &&
            (identical(other.updateFailureOrSucces, updateFailureOrSucces) ||
                other.updateFailureOrSucces == updateFailureOrSucces));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, deleteFailureOrSucces, updateFailureOrSucces);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements PassActionState {
  const factory _Initial(
      {required final Option<Either<StorageFailure, Unit>>
          deleteFailureOrSucces,
      required final Option<Either<StorageFailure, Unit>>
          updateFailureOrSucces}) = _$_Initial;

  @override
  Option<Either<StorageFailure, Unit>> get deleteFailureOrSucces;
  @override
  Option<Either<StorageFailure, Unit>> get updateFailureOrSucces;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
