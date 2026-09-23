// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clipboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClipboardEvent {
  String get text => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) copySensitive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? copySensitive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? copySensitive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CopySensitive value) copySensitive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CopySensitive value)? copySensitive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CopySensitive value)? copySensitive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClipboardEventCopyWith<ClipboardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipboardEventCopyWith<$Res> {
  factory $ClipboardEventCopyWith(
          ClipboardEvent value, $Res Function(ClipboardEvent) then) =
      _$ClipboardEventCopyWithImpl<$Res, ClipboardEvent>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$ClipboardEventCopyWithImpl<$Res, $Val extends ClipboardEvent>
    implements $ClipboardEventCopyWith<$Res> {
  _$ClipboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CopySensitiveCopyWith<$Res>
    implements $ClipboardEventCopyWith<$Res> {
  factory _$$_CopySensitiveCopyWith(
          _$_CopySensitive value, $Res Function(_$_CopySensitive) then) =
      __$$_CopySensitiveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_CopySensitiveCopyWithImpl<$Res>
    extends _$ClipboardEventCopyWithImpl<$Res, _$_CopySensitive>
    implements _$$_CopySensitiveCopyWith<$Res> {
  __$$_CopySensitiveCopyWithImpl(
      _$_CopySensitive _value, $Res Function(_$_CopySensitive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_CopySensitive(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CopySensitive implements _CopySensitive {
  const _$_CopySensitive({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'ClipboardEvent.copySensitive(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CopySensitive &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CopySensitiveCopyWith<_$_CopySensitive> get copyWith =>
      __$$_CopySensitiveCopyWithImpl<_$_CopySensitive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) copySensitive,
  }) {
    return copySensitive(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? copySensitive,
  }) {
    return copySensitive?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? copySensitive,
    required TResult orElse(),
  }) {
    if (copySensitive != null) {
      return copySensitive(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CopySensitive value) copySensitive,
  }) {
    return copySensitive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CopySensitive value)? copySensitive,
  }) {
    return copySensitive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CopySensitive value)? copySensitive,
    required TResult orElse(),
  }) {
    if (copySensitive != null) {
      return copySensitive(this);
    }
    return orElse();
  }
}

abstract class _CopySensitive implements ClipboardEvent {
  const factory _CopySensitive({required final String text}) = _$_CopySensitive;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_CopySensitiveCopyWith<_$_CopySensitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClipboardState {
  Option<Either<ClipboardFailure, Unit>> get copyFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClipboardStateCopyWith<ClipboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipboardStateCopyWith<$Res> {
  factory $ClipboardStateCopyWith(
          ClipboardState value, $Res Function(ClipboardState) then) =
      _$ClipboardStateCopyWithImpl<$Res, ClipboardState>;
  @useResult
  $Res call({Option<Either<ClipboardFailure, Unit>> copyFailureOrSuccess});
}

/// @nodoc
class _$ClipboardStateCopyWithImpl<$Res, $Val extends ClipboardState>
    implements $ClipboardStateCopyWith<$Res> {
  _$ClipboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copyFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      copyFailureOrSuccess: null == copyFailureOrSuccess
          ? _value.copyFailureOrSuccess
          : copyFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ClipboardFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClipboardStateCopyWith<$Res>
    implements $ClipboardStateCopyWith<$Res> {
  factory _$$_ClipboardStateCopyWith(
          _$_ClipboardState value, $Res Function(_$_ClipboardState) then) =
      __$$_ClipboardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<Either<ClipboardFailure, Unit>> copyFailureOrSuccess});
}

/// @nodoc
class __$$_ClipboardStateCopyWithImpl<$Res>
    extends _$ClipboardStateCopyWithImpl<$Res, _$_ClipboardState>
    implements _$$_ClipboardStateCopyWith<$Res> {
  __$$_ClipboardStateCopyWithImpl(
      _$_ClipboardState _value, $Res Function(_$_ClipboardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copyFailureOrSuccess = null,
  }) {
    return _then(_$_ClipboardState(
      copyFailureOrSuccess: null == copyFailureOrSuccess
          ? _value.copyFailureOrSuccess
          : copyFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ClipboardFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ClipboardState implements _ClipboardState {
  const _$_ClipboardState({required this.copyFailureOrSuccess});

  @override
  final Option<Either<ClipboardFailure, Unit>> copyFailureOrSuccess;

  @override
  String toString() {
    return 'ClipboardState(copyFailureOrSuccess: $copyFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClipboardState &&
            (identical(other.copyFailureOrSuccess, copyFailureOrSuccess) ||
                other.copyFailureOrSuccess == copyFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, copyFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClipboardStateCopyWith<_$_ClipboardState> get copyWith =>
      __$$_ClipboardStateCopyWithImpl<_$_ClipboardState>(this, _$identity);
}

abstract class _ClipboardState implements ClipboardState {
  const factory _ClipboardState(
      {required final Option<Either<ClipboardFailure, Unit>>
          copyFailureOrSuccess}) = _$_ClipboardState;

  @override
  Option<Either<ClipboardFailure, Unit>> get copyFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_ClipboardStateCopyWith<_$_ClipboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
