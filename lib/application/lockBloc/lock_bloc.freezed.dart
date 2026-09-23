// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LockEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPinStatus,
    required TResult Function() refreshLockout,
    required TResult Function(String pin) verifyPin,
    required TResult Function(String pin, String confirmPin) setPin,
    required TResult Function(
            String currentPin, String newPin, String confirmNewPin)
        updatePin,
    required TResult Function(String currentPin) removePin,
    required TResult Function() clearMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPinStatus,
    TResult? Function()? refreshLockout,
    TResult? Function(String pin)? verifyPin,
    TResult? Function(String pin, String confirmPin)? setPin,
    TResult? Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult? Function(String currentPin)? removePin,
    TResult? Function()? clearMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPinStatus,
    TResult Function()? refreshLockout,
    TResult Function(String pin)? verifyPin,
    TResult Function(String pin, String confirmPin)? setPin,
    TResult Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult Function(String currentPin)? removePin,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPinStatus value) checkPinStatus,
    required TResult Function(_RefreshLockout value) refreshLockout,
    required TResult Function(_VerifyPin value) verifyPin,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_UpdatePin value) updatePin,
    required TResult Function(_RemovePin value) removePin,
    required TResult Function(_ClearMessages value) clearMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPinStatus value)? checkPinStatus,
    TResult? Function(_RefreshLockout value)? refreshLockout,
    TResult? Function(_VerifyPin value)? verifyPin,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_UpdatePin value)? updatePin,
    TResult? Function(_RemovePin value)? removePin,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPinStatus value)? checkPinStatus,
    TResult Function(_RefreshLockout value)? refreshLockout,
    TResult Function(_VerifyPin value)? verifyPin,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_UpdatePin value)? updatePin,
    TResult Function(_RemovePin value)? removePin,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockEventCopyWith<$Res> {
  factory $LockEventCopyWith(LockEvent value, $Res Function(LockEvent) then) =
      _$LockEventCopyWithImpl<$Res, LockEvent>;
}

/// @nodoc
class _$LockEventCopyWithImpl<$Res, $Val extends LockEvent>
    implements $LockEventCopyWith<$Res> {
  _$LockEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckPinStatusCopyWith<$Res> {
  factory _$$_CheckPinStatusCopyWith(
          _$_CheckPinStatus value, $Res Function(_$_CheckPinStatus) then) =
      __$$_CheckPinStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckPinStatusCopyWithImpl<$Res>
    extends _$LockEventCopyWithImpl<$Res, _$_CheckPinStatus>
    implements _$$_CheckPinStatusCopyWith<$Res> {
  __$$_CheckPinStatusCopyWithImpl(
      _$_CheckPinStatus _value, $Res Function(_$_CheckPinStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckPinStatus implements _CheckPinStatus {
  const _$_CheckPinStatus();

  @override
  String toString() {
    return 'LockEvent.checkPinStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckPinStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPinStatus,
    required TResult Function() refreshLockout,
    required TResult Function(String pin) verifyPin,
    required TResult Function(String pin, String confirmPin) setPin,
    required TResult Function(
            String currentPin, String newPin, String confirmNewPin)
        updatePin,
    required TResult Function(String currentPin) removePin,
    required TResult Function() clearMessages,
  }) {
    return checkPinStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPinStatus,
    TResult? Function()? refreshLockout,
    TResult? Function(String pin)? verifyPin,
    TResult? Function(String pin, String confirmPin)? setPin,
    TResult? Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult? Function(String currentPin)? removePin,
    TResult? Function()? clearMessages,
  }) {
    return checkPinStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPinStatus,
    TResult Function()? refreshLockout,
    TResult Function(String pin)? verifyPin,
    TResult Function(String pin, String confirmPin)? setPin,
    TResult Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult Function(String currentPin)? removePin,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) {
    if (checkPinStatus != null) {
      return checkPinStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPinStatus value) checkPinStatus,
    required TResult Function(_RefreshLockout value) refreshLockout,
    required TResult Function(_VerifyPin value) verifyPin,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_UpdatePin value) updatePin,
    required TResult Function(_RemovePin value) removePin,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    return checkPinStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPinStatus value)? checkPinStatus,
    TResult? Function(_RefreshLockout value)? refreshLockout,
    TResult? Function(_VerifyPin value)? verifyPin,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_UpdatePin value)? updatePin,
    TResult? Function(_RemovePin value)? removePin,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    return checkPinStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPinStatus value)? checkPinStatus,
    TResult Function(_RefreshLockout value)? refreshLockout,
    TResult Function(_VerifyPin value)? verifyPin,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_UpdatePin value)? updatePin,
    TResult Function(_RemovePin value)? removePin,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    if (checkPinStatus != null) {
      return checkPinStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckPinStatus implements LockEvent {
  const factory _CheckPinStatus() = _$_CheckPinStatus;
}

/// @nodoc
abstract class _$$_RefreshLockoutCopyWith<$Res> {
  factory _$$_RefreshLockoutCopyWith(
          _$_RefreshLockout value, $Res Function(_$_RefreshLockout) then) =
      __$$_RefreshLockoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshLockoutCopyWithImpl<$Res>
    extends _$LockEventCopyWithImpl<$Res, _$_RefreshLockout>
    implements _$$_RefreshLockoutCopyWith<$Res> {
  __$$_RefreshLockoutCopyWithImpl(
      _$_RefreshLockout _value, $Res Function(_$_RefreshLockout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshLockout implements _RefreshLockout {
  const _$_RefreshLockout();

  @override
  String toString() {
    return 'LockEvent.refreshLockout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshLockout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPinStatus,
    required TResult Function() refreshLockout,
    required TResult Function(String pin) verifyPin,
    required TResult Function(String pin, String confirmPin) setPin,
    required TResult Function(
            String currentPin, String newPin, String confirmNewPin)
        updatePin,
    required TResult Function(String currentPin) removePin,
    required TResult Function() clearMessages,
  }) {
    return refreshLockout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPinStatus,
    TResult? Function()? refreshLockout,
    TResult? Function(String pin)? verifyPin,
    TResult? Function(String pin, String confirmPin)? setPin,
    TResult? Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult? Function(String currentPin)? removePin,
    TResult? Function()? clearMessages,
  }) {
    return refreshLockout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPinStatus,
    TResult Function()? refreshLockout,
    TResult Function(String pin)? verifyPin,
    TResult Function(String pin, String confirmPin)? setPin,
    TResult Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult Function(String currentPin)? removePin,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) {
    if (refreshLockout != null) {
      return refreshLockout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPinStatus value) checkPinStatus,
    required TResult Function(_RefreshLockout value) refreshLockout,
    required TResult Function(_VerifyPin value) verifyPin,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_UpdatePin value) updatePin,
    required TResult Function(_RemovePin value) removePin,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    return refreshLockout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPinStatus value)? checkPinStatus,
    TResult? Function(_RefreshLockout value)? refreshLockout,
    TResult? Function(_VerifyPin value)? verifyPin,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_UpdatePin value)? updatePin,
    TResult? Function(_RemovePin value)? removePin,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    return refreshLockout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPinStatus value)? checkPinStatus,
    TResult Function(_RefreshLockout value)? refreshLockout,
    TResult Function(_VerifyPin value)? verifyPin,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_UpdatePin value)? updatePin,
    TResult Function(_RemovePin value)? removePin,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    if (refreshLockout != null) {
      return refreshLockout(this);
    }
    return orElse();
  }
}

abstract class _RefreshLockout implements LockEvent {
  const factory _RefreshLockout() = _$_RefreshLockout;
}

/// @nodoc
abstract class _$$_VerifyPinCopyWith<$Res> {
  factory _$$_VerifyPinCopyWith(
          _$_VerifyPin value, $Res Function(_$_VerifyPin) then) =
      __$$_VerifyPinCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$_VerifyPinCopyWithImpl<$Res>
    extends _$LockEventCopyWithImpl<$Res, _$_VerifyPin>
    implements _$$_VerifyPinCopyWith<$Res> {
  __$$_VerifyPinCopyWithImpl(
      _$_VerifyPin _value, $Res Function(_$_VerifyPin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$_VerifyPin(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyPin implements _VerifyPin {
  const _$_VerifyPin({required this.pin});

  @override
  final String pin;

  @override
  String toString() {
    return 'LockEvent.verifyPin(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyPin &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyPinCopyWith<_$_VerifyPin> get copyWith =>
      __$$_VerifyPinCopyWithImpl<_$_VerifyPin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPinStatus,
    required TResult Function() refreshLockout,
    required TResult Function(String pin) verifyPin,
    required TResult Function(String pin, String confirmPin) setPin,
    required TResult Function(
            String currentPin, String newPin, String confirmNewPin)
        updatePin,
    required TResult Function(String currentPin) removePin,
    required TResult Function() clearMessages,
  }) {
    return verifyPin(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPinStatus,
    TResult? Function()? refreshLockout,
    TResult? Function(String pin)? verifyPin,
    TResult? Function(String pin, String confirmPin)? setPin,
    TResult? Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult? Function(String currentPin)? removePin,
    TResult? Function()? clearMessages,
  }) {
    return verifyPin?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPinStatus,
    TResult Function()? refreshLockout,
    TResult Function(String pin)? verifyPin,
    TResult Function(String pin, String confirmPin)? setPin,
    TResult Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult Function(String currentPin)? removePin,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) {
    if (verifyPin != null) {
      return verifyPin(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPinStatus value) checkPinStatus,
    required TResult Function(_RefreshLockout value) refreshLockout,
    required TResult Function(_VerifyPin value) verifyPin,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_UpdatePin value) updatePin,
    required TResult Function(_RemovePin value) removePin,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    return verifyPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPinStatus value)? checkPinStatus,
    TResult? Function(_RefreshLockout value)? refreshLockout,
    TResult? Function(_VerifyPin value)? verifyPin,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_UpdatePin value)? updatePin,
    TResult? Function(_RemovePin value)? removePin,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    return verifyPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPinStatus value)? checkPinStatus,
    TResult Function(_RefreshLockout value)? refreshLockout,
    TResult Function(_VerifyPin value)? verifyPin,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_UpdatePin value)? updatePin,
    TResult Function(_RemovePin value)? removePin,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    if (verifyPin != null) {
      return verifyPin(this);
    }
    return orElse();
  }
}

abstract class _VerifyPin implements LockEvent {
  const factory _VerifyPin({required final String pin}) = _$_VerifyPin;

  String get pin;
  @JsonKey(ignore: true)
  _$$_VerifyPinCopyWith<_$_VerifyPin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetPinCopyWith<$Res> {
  factory _$$_SetPinCopyWith(_$_SetPin value, $Res Function(_$_SetPin) then) =
      __$$_SetPinCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin, String confirmPin});
}

/// @nodoc
class __$$_SetPinCopyWithImpl<$Res>
    extends _$LockEventCopyWithImpl<$Res, _$_SetPin>
    implements _$$_SetPinCopyWith<$Res> {
  __$$_SetPinCopyWithImpl(_$_SetPin _value, $Res Function(_$_SetPin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? confirmPin = null,
  }) {
    return _then(_$_SetPin(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPin: null == confirmPin
          ? _value.confirmPin
          : confirmPin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetPin implements _SetPin {
  const _$_SetPin({required this.pin, required this.confirmPin});

  @override
  final String pin;
  @override
  final String confirmPin;

  @override
  String toString() {
    return 'LockEvent.setPin(pin: $pin, confirmPin: $confirmPin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetPin &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.confirmPin, confirmPin) ||
                other.confirmPin == confirmPin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin, confirmPin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetPinCopyWith<_$_SetPin> get copyWith =>
      __$$_SetPinCopyWithImpl<_$_SetPin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPinStatus,
    required TResult Function() refreshLockout,
    required TResult Function(String pin) verifyPin,
    required TResult Function(String pin, String confirmPin) setPin,
    required TResult Function(
            String currentPin, String newPin, String confirmNewPin)
        updatePin,
    required TResult Function(String currentPin) removePin,
    required TResult Function() clearMessages,
  }) {
    return setPin(pin, confirmPin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPinStatus,
    TResult? Function()? refreshLockout,
    TResult? Function(String pin)? verifyPin,
    TResult? Function(String pin, String confirmPin)? setPin,
    TResult? Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult? Function(String currentPin)? removePin,
    TResult? Function()? clearMessages,
  }) {
    return setPin?.call(pin, confirmPin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPinStatus,
    TResult Function()? refreshLockout,
    TResult Function(String pin)? verifyPin,
    TResult Function(String pin, String confirmPin)? setPin,
    TResult Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult Function(String currentPin)? removePin,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) {
    if (setPin != null) {
      return setPin(pin, confirmPin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPinStatus value) checkPinStatus,
    required TResult Function(_RefreshLockout value) refreshLockout,
    required TResult Function(_VerifyPin value) verifyPin,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_UpdatePin value) updatePin,
    required TResult Function(_RemovePin value) removePin,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    return setPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPinStatus value)? checkPinStatus,
    TResult? Function(_RefreshLockout value)? refreshLockout,
    TResult? Function(_VerifyPin value)? verifyPin,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_UpdatePin value)? updatePin,
    TResult? Function(_RemovePin value)? removePin,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    return setPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPinStatus value)? checkPinStatus,
    TResult Function(_RefreshLockout value)? refreshLockout,
    TResult Function(_VerifyPin value)? verifyPin,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_UpdatePin value)? updatePin,
    TResult Function(_RemovePin value)? removePin,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    if (setPin != null) {
      return setPin(this);
    }
    return orElse();
  }
}

abstract class _SetPin implements LockEvent {
  const factory _SetPin(
      {required final String pin,
      required final String confirmPin}) = _$_SetPin;

  String get pin;
  String get confirmPin;
  @JsonKey(ignore: true)
  _$$_SetPinCopyWith<_$_SetPin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePinCopyWith<$Res> {
  factory _$$_UpdatePinCopyWith(
          _$_UpdatePin value, $Res Function(_$_UpdatePin) then) =
      __$$_UpdatePinCopyWithImpl<$Res>;
  @useResult
  $Res call({String currentPin, String newPin, String confirmNewPin});
}

/// @nodoc
class __$$_UpdatePinCopyWithImpl<$Res>
    extends _$LockEventCopyWithImpl<$Res, _$_UpdatePin>
    implements _$$_UpdatePinCopyWith<$Res> {
  __$$_UpdatePinCopyWithImpl(
      _$_UpdatePin _value, $Res Function(_$_UpdatePin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPin = null,
    Object? newPin = null,
    Object? confirmNewPin = null,
  }) {
    return _then(_$_UpdatePin(
      currentPin: null == currentPin
          ? _value.currentPin
          : currentPin // ignore: cast_nullable_to_non_nullable
              as String,
      newPin: null == newPin
          ? _value.newPin
          : newPin // ignore: cast_nullable_to_non_nullable
              as String,
      confirmNewPin: null == confirmNewPin
          ? _value.confirmNewPin
          : confirmNewPin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdatePin implements _UpdatePin {
  const _$_UpdatePin(
      {required this.currentPin,
      required this.newPin,
      required this.confirmNewPin});

  @override
  final String currentPin;
  @override
  final String newPin;
  @override
  final String confirmNewPin;

  @override
  String toString() {
    return 'LockEvent.updatePin(currentPin: $currentPin, newPin: $newPin, confirmNewPin: $confirmNewPin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePin &&
            (identical(other.currentPin, currentPin) ||
                other.currentPin == currentPin) &&
            (identical(other.newPin, newPin) || other.newPin == newPin) &&
            (identical(other.confirmNewPin, confirmNewPin) ||
                other.confirmNewPin == confirmNewPin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPin, newPin, confirmNewPin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePinCopyWith<_$_UpdatePin> get copyWith =>
      __$$_UpdatePinCopyWithImpl<_$_UpdatePin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPinStatus,
    required TResult Function() refreshLockout,
    required TResult Function(String pin) verifyPin,
    required TResult Function(String pin, String confirmPin) setPin,
    required TResult Function(
            String currentPin, String newPin, String confirmNewPin)
        updatePin,
    required TResult Function(String currentPin) removePin,
    required TResult Function() clearMessages,
  }) {
    return updatePin(currentPin, newPin, confirmNewPin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPinStatus,
    TResult? Function()? refreshLockout,
    TResult? Function(String pin)? verifyPin,
    TResult? Function(String pin, String confirmPin)? setPin,
    TResult? Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult? Function(String currentPin)? removePin,
    TResult? Function()? clearMessages,
  }) {
    return updatePin?.call(currentPin, newPin, confirmNewPin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPinStatus,
    TResult Function()? refreshLockout,
    TResult Function(String pin)? verifyPin,
    TResult Function(String pin, String confirmPin)? setPin,
    TResult Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult Function(String currentPin)? removePin,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) {
    if (updatePin != null) {
      return updatePin(currentPin, newPin, confirmNewPin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPinStatus value) checkPinStatus,
    required TResult Function(_RefreshLockout value) refreshLockout,
    required TResult Function(_VerifyPin value) verifyPin,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_UpdatePin value) updatePin,
    required TResult Function(_RemovePin value) removePin,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    return updatePin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPinStatus value)? checkPinStatus,
    TResult? Function(_RefreshLockout value)? refreshLockout,
    TResult? Function(_VerifyPin value)? verifyPin,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_UpdatePin value)? updatePin,
    TResult? Function(_RemovePin value)? removePin,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    return updatePin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPinStatus value)? checkPinStatus,
    TResult Function(_RefreshLockout value)? refreshLockout,
    TResult Function(_VerifyPin value)? verifyPin,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_UpdatePin value)? updatePin,
    TResult Function(_RemovePin value)? removePin,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    if (updatePin != null) {
      return updatePin(this);
    }
    return orElse();
  }
}

abstract class _UpdatePin implements LockEvent {
  const factory _UpdatePin(
      {required final String currentPin,
      required final String newPin,
      required final String confirmNewPin}) = _$_UpdatePin;

  String get currentPin;
  String get newPin;
  String get confirmNewPin;
  @JsonKey(ignore: true)
  _$$_UpdatePinCopyWith<_$_UpdatePin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemovePinCopyWith<$Res> {
  factory _$$_RemovePinCopyWith(
          _$_RemovePin value, $Res Function(_$_RemovePin) then) =
      __$$_RemovePinCopyWithImpl<$Res>;
  @useResult
  $Res call({String currentPin});
}

/// @nodoc
class __$$_RemovePinCopyWithImpl<$Res>
    extends _$LockEventCopyWithImpl<$Res, _$_RemovePin>
    implements _$$_RemovePinCopyWith<$Res> {
  __$$_RemovePinCopyWithImpl(
      _$_RemovePin _value, $Res Function(_$_RemovePin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPin = null,
  }) {
    return _then(_$_RemovePin(
      currentPin: null == currentPin
          ? _value.currentPin
          : currentPin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemovePin implements _RemovePin {
  const _$_RemovePin({required this.currentPin});

  @override
  final String currentPin;

  @override
  String toString() {
    return 'LockEvent.removePin(currentPin: $currentPin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemovePin &&
            (identical(other.currentPin, currentPin) ||
                other.currentPin == currentPin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemovePinCopyWith<_$_RemovePin> get copyWith =>
      __$$_RemovePinCopyWithImpl<_$_RemovePin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPinStatus,
    required TResult Function() refreshLockout,
    required TResult Function(String pin) verifyPin,
    required TResult Function(String pin, String confirmPin) setPin,
    required TResult Function(
            String currentPin, String newPin, String confirmNewPin)
        updatePin,
    required TResult Function(String currentPin) removePin,
    required TResult Function() clearMessages,
  }) {
    return removePin(currentPin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPinStatus,
    TResult? Function()? refreshLockout,
    TResult? Function(String pin)? verifyPin,
    TResult? Function(String pin, String confirmPin)? setPin,
    TResult? Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult? Function(String currentPin)? removePin,
    TResult? Function()? clearMessages,
  }) {
    return removePin?.call(currentPin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPinStatus,
    TResult Function()? refreshLockout,
    TResult Function(String pin)? verifyPin,
    TResult Function(String pin, String confirmPin)? setPin,
    TResult Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult Function(String currentPin)? removePin,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) {
    if (removePin != null) {
      return removePin(currentPin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPinStatus value) checkPinStatus,
    required TResult Function(_RefreshLockout value) refreshLockout,
    required TResult Function(_VerifyPin value) verifyPin,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_UpdatePin value) updatePin,
    required TResult Function(_RemovePin value) removePin,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    return removePin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPinStatus value)? checkPinStatus,
    TResult? Function(_RefreshLockout value)? refreshLockout,
    TResult? Function(_VerifyPin value)? verifyPin,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_UpdatePin value)? updatePin,
    TResult? Function(_RemovePin value)? removePin,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    return removePin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPinStatus value)? checkPinStatus,
    TResult Function(_RefreshLockout value)? refreshLockout,
    TResult Function(_VerifyPin value)? verifyPin,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_UpdatePin value)? updatePin,
    TResult Function(_RemovePin value)? removePin,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    if (removePin != null) {
      return removePin(this);
    }
    return orElse();
  }
}

abstract class _RemovePin implements LockEvent {
  const factory _RemovePin({required final String currentPin}) = _$_RemovePin;

  String get currentPin;
  @JsonKey(ignore: true)
  _$$_RemovePinCopyWith<_$_RemovePin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearMessagesCopyWith<$Res> {
  factory _$$_ClearMessagesCopyWith(
          _$_ClearMessages value, $Res Function(_$_ClearMessages) then) =
      __$$_ClearMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearMessagesCopyWithImpl<$Res>
    extends _$LockEventCopyWithImpl<$Res, _$_ClearMessages>
    implements _$$_ClearMessagesCopyWith<$Res> {
  __$$_ClearMessagesCopyWithImpl(
      _$_ClearMessages _value, $Res Function(_$_ClearMessages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearMessages implements _ClearMessages {
  const _$_ClearMessages();

  @override
  String toString() {
    return 'LockEvent.clearMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPinStatus,
    required TResult Function() refreshLockout,
    required TResult Function(String pin) verifyPin,
    required TResult Function(String pin, String confirmPin) setPin,
    required TResult Function(
            String currentPin, String newPin, String confirmNewPin)
        updatePin,
    required TResult Function(String currentPin) removePin,
    required TResult Function() clearMessages,
  }) {
    return clearMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPinStatus,
    TResult? Function()? refreshLockout,
    TResult? Function(String pin)? verifyPin,
    TResult? Function(String pin, String confirmPin)? setPin,
    TResult? Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult? Function(String currentPin)? removePin,
    TResult? Function()? clearMessages,
  }) {
    return clearMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPinStatus,
    TResult Function()? refreshLockout,
    TResult Function(String pin)? verifyPin,
    TResult Function(String pin, String confirmPin)? setPin,
    TResult Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult Function(String currentPin)? removePin,
    TResult Function()? clearMessages,
    required TResult orElse(),
  }) {
    if (clearMessages != null) {
      return clearMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPinStatus value) checkPinStatus,
    required TResult Function(_RefreshLockout value) refreshLockout,
    required TResult Function(_VerifyPin value) verifyPin,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_UpdatePin value) updatePin,
    required TResult Function(_RemovePin value) removePin,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    return clearMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPinStatus value)? checkPinStatus,
    TResult? Function(_RefreshLockout value)? refreshLockout,
    TResult? Function(_VerifyPin value)? verifyPin,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_UpdatePin value)? updatePin,
    TResult? Function(_RemovePin value)? removePin,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    return clearMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPinStatus value)? checkPinStatus,
    TResult Function(_RefreshLockout value)? refreshLockout,
    TResult Function(_VerifyPin value)? verifyPin,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_UpdatePin value)? updatePin,
    TResult Function(_RemovePin value)? removePin,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    if (clearMessages != null) {
      return clearMessages(this);
    }
    return orElse();
  }
}

abstract class _ClearMessages implements LockEvent {
  const factory _ClearMessages() = _$_ClearMessages;
}

/// @nodoc
mixin _$AppLockState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isPinEnabled => throw _privateConstructorUsedError;
  bool get isUnlocked => throw _privateConstructorUsedError;
  int get lockoutRemainingSeconds => throw _privateConstructorUsedError;
  Option<Either<LockFailure, bool>> get statusFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<LockFailure, Unit>> get verifyFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<LockFailure, Unit>> get setFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<LockFailure, Unit>> get updateFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<LockFailure, Unit>> get removeFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppLockStateCopyWith<AppLockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLockStateCopyWith<$Res> {
  factory $AppLockStateCopyWith(
          AppLockState value, $Res Function(AppLockState) then) =
      _$AppLockStateCopyWithImpl<$Res, AppLockState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isPinEnabled,
      bool isUnlocked,
      int lockoutRemainingSeconds,
      Option<Either<LockFailure, bool>> statusFailureOrSuccess,
      Option<Either<LockFailure, Unit>> verifyFailureOrSuccess,
      Option<Either<LockFailure, Unit>> setFailureOrSuccess,
      Option<Either<LockFailure, Unit>> updateFailureOrSuccess,
      Option<Either<LockFailure, Unit>> removeFailureOrSuccess});
}

/// @nodoc
class _$AppLockStateCopyWithImpl<$Res, $Val extends AppLockState>
    implements $AppLockStateCopyWith<$Res> {
  _$AppLockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isPinEnabled = null,
    Object? isUnlocked = null,
    Object? lockoutRemainingSeconds = null,
    Object? statusFailureOrSuccess = null,
    Object? verifyFailureOrSuccess = null,
    Object? setFailureOrSuccess = null,
    Object? updateFailureOrSuccess = null,
    Object? removeFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinEnabled: null == isPinEnabled
          ? _value.isPinEnabled
          : isPinEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      lockoutRemainingSeconds: null == lockoutRemainingSeconds
          ? _value.lockoutRemainingSeconds
          : lockoutRemainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      statusFailureOrSuccess: null == statusFailureOrSuccess
          ? _value.statusFailureOrSuccess
          : statusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, bool>>,
      verifyFailureOrSuccess: null == verifyFailureOrSuccess
          ? _value.verifyFailureOrSuccess
          : verifyFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
      setFailureOrSuccess: null == setFailureOrSuccess
          ? _value.setFailureOrSuccess
          : setFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
      updateFailureOrSuccess: null == updateFailureOrSuccess
          ? _value.updateFailureOrSuccess
          : updateFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
      removeFailureOrSuccess: null == removeFailureOrSuccess
          ? _value.removeFailureOrSuccess
          : removeFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppLockStateCopyWith<$Res>
    implements $AppLockStateCopyWith<$Res> {
  factory _$$_AppLockStateCopyWith(
          _$_AppLockState value, $Res Function(_$_AppLockState) then) =
      __$$_AppLockStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isPinEnabled,
      bool isUnlocked,
      int lockoutRemainingSeconds,
      Option<Either<LockFailure, bool>> statusFailureOrSuccess,
      Option<Either<LockFailure, Unit>> verifyFailureOrSuccess,
      Option<Either<LockFailure, Unit>> setFailureOrSuccess,
      Option<Either<LockFailure, Unit>> updateFailureOrSuccess,
      Option<Either<LockFailure, Unit>> removeFailureOrSuccess});
}

/// @nodoc
class __$$_AppLockStateCopyWithImpl<$Res>
    extends _$AppLockStateCopyWithImpl<$Res, _$_AppLockState>
    implements _$$_AppLockStateCopyWith<$Res> {
  __$$_AppLockStateCopyWithImpl(
      _$_AppLockState _value, $Res Function(_$_AppLockState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isPinEnabled = null,
    Object? isUnlocked = null,
    Object? lockoutRemainingSeconds = null,
    Object? statusFailureOrSuccess = null,
    Object? verifyFailureOrSuccess = null,
    Object? setFailureOrSuccess = null,
    Object? updateFailureOrSuccess = null,
    Object? removeFailureOrSuccess = null,
  }) {
    return _then(_$_AppLockState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinEnabled: null == isPinEnabled
          ? _value.isPinEnabled
          : isPinEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      lockoutRemainingSeconds: null == lockoutRemainingSeconds
          ? _value.lockoutRemainingSeconds
          : lockoutRemainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      statusFailureOrSuccess: null == statusFailureOrSuccess
          ? _value.statusFailureOrSuccess
          : statusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, bool>>,
      verifyFailureOrSuccess: null == verifyFailureOrSuccess
          ? _value.verifyFailureOrSuccess
          : verifyFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
      setFailureOrSuccess: null == setFailureOrSuccess
          ? _value.setFailureOrSuccess
          : setFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
      updateFailureOrSuccess: null == updateFailureOrSuccess
          ? _value.updateFailureOrSuccess
          : updateFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
      removeFailureOrSuccess: null == removeFailureOrSuccess
          ? _value.removeFailureOrSuccess
          : removeFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AppLockState extends _AppLockState {
  const _$_AppLockState(
      {required this.isLoading,
      required this.isPinEnabled,
      required this.isUnlocked,
      required this.lockoutRemainingSeconds,
      required this.statusFailureOrSuccess,
      required this.verifyFailureOrSuccess,
      required this.setFailureOrSuccess,
      required this.updateFailureOrSuccess,
      required this.removeFailureOrSuccess})
      : super._();

  @override
  final bool isLoading;
  @override
  final bool isPinEnabled;
  @override
  final bool isUnlocked;
  @override
  final int lockoutRemainingSeconds;
  @override
  final Option<Either<LockFailure, bool>> statusFailureOrSuccess;
  @override
  final Option<Either<LockFailure, Unit>> verifyFailureOrSuccess;
  @override
  final Option<Either<LockFailure, Unit>> setFailureOrSuccess;
  @override
  final Option<Either<LockFailure, Unit>> updateFailureOrSuccess;
  @override
  final Option<Either<LockFailure, Unit>> removeFailureOrSuccess;

  @override
  String toString() {
    return 'AppLockState(isLoading: $isLoading, isPinEnabled: $isPinEnabled, isUnlocked: $isUnlocked, lockoutRemainingSeconds: $lockoutRemainingSeconds, statusFailureOrSuccess: $statusFailureOrSuccess, verifyFailureOrSuccess: $verifyFailureOrSuccess, setFailureOrSuccess: $setFailureOrSuccess, updateFailureOrSuccess: $updateFailureOrSuccess, removeFailureOrSuccess: $removeFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppLockState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isPinEnabled, isPinEnabled) ||
                other.isPinEnabled == isPinEnabled) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked) &&
            (identical(
                    other.lockoutRemainingSeconds, lockoutRemainingSeconds) ||
                other.lockoutRemainingSeconds == lockoutRemainingSeconds) &&
            (identical(other.statusFailureOrSuccess, statusFailureOrSuccess) ||
                other.statusFailureOrSuccess == statusFailureOrSuccess) &&
            (identical(other.verifyFailureOrSuccess, verifyFailureOrSuccess) ||
                other.verifyFailureOrSuccess == verifyFailureOrSuccess) &&
            (identical(other.setFailureOrSuccess, setFailureOrSuccess) ||
                other.setFailureOrSuccess == setFailureOrSuccess) &&
            (identical(other.updateFailureOrSuccess, updateFailureOrSuccess) ||
                other.updateFailureOrSuccess == updateFailureOrSuccess) &&
            (identical(other.removeFailureOrSuccess, removeFailureOrSuccess) ||
                other.removeFailureOrSuccess == removeFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isPinEnabled,
      isUnlocked,
      lockoutRemainingSeconds,
      statusFailureOrSuccess,
      verifyFailureOrSuccess,
      setFailureOrSuccess,
      updateFailureOrSuccess,
      removeFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppLockStateCopyWith<_$_AppLockState> get copyWith =>
      __$$_AppLockStateCopyWithImpl<_$_AppLockState>(this, _$identity);
}

abstract class _AppLockState extends AppLockState {
  const factory _AppLockState(
      {required final bool isLoading,
      required final bool isPinEnabled,
      required final bool isUnlocked,
      required final int lockoutRemainingSeconds,
      required final Option<Either<LockFailure, bool>> statusFailureOrSuccess,
      required final Option<Either<LockFailure, Unit>> verifyFailureOrSuccess,
      required final Option<Either<LockFailure, Unit>> setFailureOrSuccess,
      required final Option<Either<LockFailure, Unit>> updateFailureOrSuccess,
      required final Option<Either<LockFailure, Unit>>
          removeFailureOrSuccess}) = _$_AppLockState;
  const _AppLockState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isPinEnabled;
  @override
  bool get isUnlocked;
  @override
  int get lockoutRemainingSeconds;
  @override
  Option<Either<LockFailure, bool>> get statusFailureOrSuccess;
  @override
  Option<Either<LockFailure, Unit>> get verifyFailureOrSuccess;
  @override
  Option<Either<LockFailure, Unit>> get setFailureOrSuccess;
  @override
  Option<Either<LockFailure, Unit>> get updateFailureOrSuccess;
  @override
  Option<Either<LockFailure, Unit>> get removeFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AppLockStateCopyWith<_$_AppLockState> get copyWith =>
      throw _privateConstructorUsedError;
}
