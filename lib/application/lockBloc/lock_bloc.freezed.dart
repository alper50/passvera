// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LockEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LockEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LockEvent()';
  }
}

/// @nodoc
class $LockEventCopyWith<$Res> {
  $LockEventCopyWith(LockEvent _, $Res Function(LockEvent) __);
}

/// Adds pattern-matching-related methods to [LockEvent].
extension LockEventPatterns on LockEvent {
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
    TResult Function(_CheckPinStatus value)? checkPinStatus,
    TResult Function(_RefreshLockout value)? refreshLockout,
    TResult Function(_VerifyPin value)? verifyPin,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_UpdatePin value)? updatePin,
    TResult Function(_RemovePin value)? removePin,
    TResult Function(_ClearMessages value)? clearMessages,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CheckPinStatus() when checkPinStatus != null:
        return checkPinStatus(_that);
      case _RefreshLockout() when refreshLockout != null:
        return refreshLockout(_that);
      case _VerifyPin() when verifyPin != null:
        return verifyPin(_that);
      case _SetPin() when setPin != null:
        return setPin(_that);
      case _UpdatePin() when updatePin != null:
        return updatePin(_that);
      case _RemovePin() when removePin != null:
        return removePin(_that);
      case _ClearMessages() when clearMessages != null:
        return clearMessages(_that);
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
    required TResult Function(_CheckPinStatus value) checkPinStatus,
    required TResult Function(_RefreshLockout value) refreshLockout,
    required TResult Function(_VerifyPin value) verifyPin,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_UpdatePin value) updatePin,
    required TResult Function(_RemovePin value) removePin,
    required TResult Function(_ClearMessages value) clearMessages,
  }) {
    final _that = this;
    switch (_that) {
      case _CheckPinStatus():
        return checkPinStatus(_that);
      case _RefreshLockout():
        return refreshLockout(_that);
      case _VerifyPin():
        return verifyPin(_that);
      case _SetPin():
        return setPin(_that);
      case _UpdatePin():
        return updatePin(_that);
      case _RemovePin():
        return removePin(_that);
      case _ClearMessages():
        return clearMessages(_that);
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
    TResult? Function(_CheckPinStatus value)? checkPinStatus,
    TResult? Function(_RefreshLockout value)? refreshLockout,
    TResult? Function(_VerifyPin value)? verifyPin,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_UpdatePin value)? updatePin,
    TResult? Function(_RemovePin value)? removePin,
    TResult? Function(_ClearMessages value)? clearMessages,
  }) {
    final _that = this;
    switch (_that) {
      case _CheckPinStatus() when checkPinStatus != null:
        return checkPinStatus(_that);
      case _RefreshLockout() when refreshLockout != null:
        return refreshLockout(_that);
      case _VerifyPin() when verifyPin != null:
        return verifyPin(_that);
      case _SetPin() when setPin != null:
        return setPin(_that);
      case _UpdatePin() when updatePin != null:
        return updatePin(_that);
      case _RemovePin() when removePin != null:
        return removePin(_that);
      case _ClearMessages() when clearMessages != null:
        return clearMessages(_that);
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
    final _that = this;
    switch (_that) {
      case _CheckPinStatus() when checkPinStatus != null:
        return checkPinStatus();
      case _RefreshLockout() when refreshLockout != null:
        return refreshLockout();
      case _VerifyPin() when verifyPin != null:
        return verifyPin(_that.pin);
      case _SetPin() when setPin != null:
        return setPin(_that.pin, _that.confirmPin);
      case _UpdatePin() when updatePin != null:
        return updatePin(_that.currentPin, _that.newPin, _that.confirmNewPin);
      case _RemovePin() when removePin != null:
        return removePin(_that.currentPin);
      case _ClearMessages() when clearMessages != null:
        return clearMessages();
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
    final _that = this;
    switch (_that) {
      case _CheckPinStatus():
        return checkPinStatus();
      case _RefreshLockout():
        return refreshLockout();
      case _VerifyPin():
        return verifyPin(_that.pin);
      case _SetPin():
        return setPin(_that.pin, _that.confirmPin);
      case _UpdatePin():
        return updatePin(_that.currentPin, _that.newPin, _that.confirmNewPin);
      case _RemovePin():
        return removePin(_that.currentPin);
      case _ClearMessages():
        return clearMessages();
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
    TResult? Function()? checkPinStatus,
    TResult? Function()? refreshLockout,
    TResult? Function(String pin)? verifyPin,
    TResult? Function(String pin, String confirmPin)? setPin,
    TResult? Function(String currentPin, String newPin, String confirmNewPin)?
        updatePin,
    TResult? Function(String currentPin)? removePin,
    TResult? Function()? clearMessages,
  }) {
    final _that = this;
    switch (_that) {
      case _CheckPinStatus() when checkPinStatus != null:
        return checkPinStatus();
      case _RefreshLockout() when refreshLockout != null:
        return refreshLockout();
      case _VerifyPin() when verifyPin != null:
        return verifyPin(_that.pin);
      case _SetPin() when setPin != null:
        return setPin(_that.pin, _that.confirmPin);
      case _UpdatePin() when updatePin != null:
        return updatePin(_that.currentPin, _that.newPin, _that.confirmNewPin);
      case _RemovePin() when removePin != null:
        return removePin(_that.currentPin);
      case _ClearMessages() when clearMessages != null:
        return clearMessages();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CheckPinStatus implements LockEvent {
  const _CheckPinStatus();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckPinStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LockEvent.checkPinStatus()';
  }
}

/// @nodoc

class _RefreshLockout implements LockEvent {
  const _RefreshLockout();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RefreshLockout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LockEvent.refreshLockout()';
  }
}

/// @nodoc

class _VerifyPin implements LockEvent {
  const _VerifyPin({required this.pin});

  final String pin;

  /// Create a copy of LockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifyPinCopyWith<_VerifyPin> get copyWith =>
      __$VerifyPinCopyWithImpl<_VerifyPin>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyPin &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @override
  String toString() {
    return 'LockEvent.verifyPin(pin: $pin)';
  }
}

/// @nodoc
abstract mixin class _$VerifyPinCopyWith<$Res>
    implements $LockEventCopyWith<$Res> {
  factory _$VerifyPinCopyWith(
          _VerifyPin value, $Res Function(_VerifyPin) _then) =
      __$VerifyPinCopyWithImpl;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$VerifyPinCopyWithImpl<$Res> implements _$VerifyPinCopyWith<$Res> {
  __$VerifyPinCopyWithImpl(this._self, this._then);

  final _VerifyPin _self;
  final $Res Function(_VerifyPin) _then;

  /// Create a copy of LockEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pin = null,
  }) {
    return _then(_VerifyPin(
      pin: null == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SetPin implements LockEvent {
  const _SetPin({required this.pin, required this.confirmPin});

  final String pin;
  final String confirmPin;

  /// Create a copy of LockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetPinCopyWith<_SetPin> get copyWith =>
      __$SetPinCopyWithImpl<_SetPin>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetPin &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.confirmPin, confirmPin) ||
                other.confirmPin == confirmPin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin, confirmPin);

  @override
  String toString() {
    return 'LockEvent.setPin(pin: $pin, confirmPin: $confirmPin)';
  }
}

/// @nodoc
abstract mixin class _$SetPinCopyWith<$Res>
    implements $LockEventCopyWith<$Res> {
  factory _$SetPinCopyWith(_SetPin value, $Res Function(_SetPin) _then) =
      __$SetPinCopyWithImpl;
  @useResult
  $Res call({String pin, String confirmPin});
}

/// @nodoc
class __$SetPinCopyWithImpl<$Res> implements _$SetPinCopyWith<$Res> {
  __$SetPinCopyWithImpl(this._self, this._then);

  final _SetPin _self;
  final $Res Function(_SetPin) _then;

  /// Create a copy of LockEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pin = null,
    Object? confirmPin = null,
  }) {
    return _then(_SetPin(
      pin: null == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPin: null == confirmPin
          ? _self.confirmPin
          : confirmPin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _UpdatePin implements LockEvent {
  const _UpdatePin(
      {required this.currentPin,
      required this.newPin,
      required this.confirmNewPin});

  final String currentPin;
  final String newPin;
  final String confirmNewPin;

  /// Create a copy of LockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePinCopyWith<_UpdatePin> get copyWith =>
      __$UpdatePinCopyWithImpl<_UpdatePin>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePin &&
            (identical(other.currentPin, currentPin) ||
                other.currentPin == currentPin) &&
            (identical(other.newPin, newPin) || other.newPin == newPin) &&
            (identical(other.confirmNewPin, confirmNewPin) ||
                other.confirmNewPin == confirmNewPin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPin, newPin, confirmNewPin);

  @override
  String toString() {
    return 'LockEvent.updatePin(currentPin: $currentPin, newPin: $newPin, confirmNewPin: $confirmNewPin)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePinCopyWith<$Res>
    implements $LockEventCopyWith<$Res> {
  factory _$UpdatePinCopyWith(
          _UpdatePin value, $Res Function(_UpdatePin) _then) =
      __$UpdatePinCopyWithImpl;
  @useResult
  $Res call({String currentPin, String newPin, String confirmNewPin});
}

/// @nodoc
class __$UpdatePinCopyWithImpl<$Res> implements _$UpdatePinCopyWith<$Res> {
  __$UpdatePinCopyWithImpl(this._self, this._then);

  final _UpdatePin _self;
  final $Res Function(_UpdatePin) _then;

  /// Create a copy of LockEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentPin = null,
    Object? newPin = null,
    Object? confirmNewPin = null,
  }) {
    return _then(_UpdatePin(
      currentPin: null == currentPin
          ? _self.currentPin
          : currentPin // ignore: cast_nullable_to_non_nullable
              as String,
      newPin: null == newPin
          ? _self.newPin
          : newPin // ignore: cast_nullable_to_non_nullable
              as String,
      confirmNewPin: null == confirmNewPin
          ? _self.confirmNewPin
          : confirmNewPin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _RemovePin implements LockEvent {
  const _RemovePin({required this.currentPin});

  final String currentPin;

  /// Create a copy of LockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemovePinCopyWith<_RemovePin> get copyWith =>
      __$RemovePinCopyWithImpl<_RemovePin>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemovePin &&
            (identical(other.currentPin, currentPin) ||
                other.currentPin == currentPin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPin);

  @override
  String toString() {
    return 'LockEvent.removePin(currentPin: $currentPin)';
  }
}

/// @nodoc
abstract mixin class _$RemovePinCopyWith<$Res>
    implements $LockEventCopyWith<$Res> {
  factory _$RemovePinCopyWith(
          _RemovePin value, $Res Function(_RemovePin) _then) =
      __$RemovePinCopyWithImpl;
  @useResult
  $Res call({String currentPin});
}

/// @nodoc
class __$RemovePinCopyWithImpl<$Res> implements _$RemovePinCopyWith<$Res> {
  __$RemovePinCopyWithImpl(this._self, this._then);

  final _RemovePin _self;
  final $Res Function(_RemovePin) _then;

  /// Create a copy of LockEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentPin = null,
  }) {
    return _then(_RemovePin(
      currentPin: null == currentPin
          ? _self.currentPin
          : currentPin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ClearMessages implements LockEvent {
  const _ClearMessages();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LockEvent.clearMessages()';
  }
}

/// @nodoc
mixin _$AppLockState {
  bool get isLoading;
  bool get isPinEnabled;
  bool get isUnlocked;
  int get lockoutRemainingSeconds;
  Option<Either<LockFailure, bool>> get statusFailureOrSuccess;
  Option<Either<LockFailure, Unit>> get verifyFailureOrSuccess;
  Option<Either<LockFailure, Unit>> get setFailureOrSuccess;
  Option<Either<LockFailure, Unit>> get updateFailureOrSuccess;
  Option<Either<LockFailure, Unit>> get removeFailureOrSuccess;

  /// Create a copy of AppLockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppLockStateCopyWith<AppLockState> get copyWith =>
      _$AppLockStateCopyWithImpl<AppLockState>(
          this as AppLockState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppLockState &&
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

  @override
  String toString() {
    return 'AppLockState(isLoading: $isLoading, isPinEnabled: $isPinEnabled, isUnlocked: $isUnlocked, lockoutRemainingSeconds: $lockoutRemainingSeconds, statusFailureOrSuccess: $statusFailureOrSuccess, verifyFailureOrSuccess: $verifyFailureOrSuccess, setFailureOrSuccess: $setFailureOrSuccess, updateFailureOrSuccess: $updateFailureOrSuccess, removeFailureOrSuccess: $removeFailureOrSuccess)';
  }
}

/// @nodoc
abstract mixin class $AppLockStateCopyWith<$Res> {
  factory $AppLockStateCopyWith(
          AppLockState value, $Res Function(AppLockState) _then) =
      _$AppLockStateCopyWithImpl;
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
class _$AppLockStateCopyWithImpl<$Res> implements $AppLockStateCopyWith<$Res> {
  _$AppLockStateCopyWithImpl(this._self, this._then);

  final AppLockState _self;
  final $Res Function(AppLockState) _then;

  /// Create a copy of AppLockState
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinEnabled: null == isPinEnabled
          ? _self.isPinEnabled
          : isPinEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnlocked: null == isUnlocked
          ? _self.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      lockoutRemainingSeconds: null == lockoutRemainingSeconds
          ? _self.lockoutRemainingSeconds
          : lockoutRemainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      statusFailureOrSuccess: null == statusFailureOrSuccess
          ? _self.statusFailureOrSuccess
          : statusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, bool>>,
      verifyFailureOrSuccess: null == verifyFailureOrSuccess
          ? _self.verifyFailureOrSuccess
          : verifyFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
      setFailureOrSuccess: null == setFailureOrSuccess
          ? _self.setFailureOrSuccess
          : setFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
      updateFailureOrSuccess: null == updateFailureOrSuccess
          ? _self.updateFailureOrSuccess
          : updateFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
      removeFailureOrSuccess: null == removeFailureOrSuccess
          ? _self.removeFailureOrSuccess
          : removeFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppLockState].
extension AppLockStatePatterns on AppLockState {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppLockState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppLockState() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_AppLockState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppLockState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppLockState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppLockState() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            bool isPinEnabled,
            bool isUnlocked,
            int lockoutRemainingSeconds,
            Option<Either<LockFailure, bool>> statusFailureOrSuccess,
            Option<Either<LockFailure, Unit>> verifyFailureOrSuccess,
            Option<Either<LockFailure, Unit>> setFailureOrSuccess,
            Option<Either<LockFailure, Unit>> updateFailureOrSuccess,
            Option<Either<LockFailure, Unit>> removeFailureOrSuccess)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppLockState() when $default != null:
        return $default(
            _that.isLoading,
            _that.isPinEnabled,
            _that.isUnlocked,
            _that.lockoutRemainingSeconds,
            _that.statusFailureOrSuccess,
            _that.verifyFailureOrSuccess,
            _that.setFailureOrSuccess,
            _that.updateFailureOrSuccess,
            _that.removeFailureOrSuccess);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            bool isPinEnabled,
            bool isUnlocked,
            int lockoutRemainingSeconds,
            Option<Either<LockFailure, bool>> statusFailureOrSuccess,
            Option<Either<LockFailure, Unit>> verifyFailureOrSuccess,
            Option<Either<LockFailure, Unit>> setFailureOrSuccess,
            Option<Either<LockFailure, Unit>> updateFailureOrSuccess,
            Option<Either<LockFailure, Unit>> removeFailureOrSuccess)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppLockState():
        return $default(
            _that.isLoading,
            _that.isPinEnabled,
            _that.isUnlocked,
            _that.lockoutRemainingSeconds,
            _that.statusFailureOrSuccess,
            _that.verifyFailureOrSuccess,
            _that.setFailureOrSuccess,
            _that.updateFailureOrSuccess,
            _that.removeFailureOrSuccess);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isLoading,
            bool isPinEnabled,
            bool isUnlocked,
            int lockoutRemainingSeconds,
            Option<Either<LockFailure, bool>> statusFailureOrSuccess,
            Option<Either<LockFailure, Unit>> verifyFailureOrSuccess,
            Option<Either<LockFailure, Unit>> setFailureOrSuccess,
            Option<Either<LockFailure, Unit>> updateFailureOrSuccess,
            Option<Either<LockFailure, Unit>> removeFailureOrSuccess)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppLockState() when $default != null:
        return $default(
            _that.isLoading,
            _that.isPinEnabled,
            _that.isUnlocked,
            _that.lockoutRemainingSeconds,
            _that.statusFailureOrSuccess,
            _that.verifyFailureOrSuccess,
            _that.setFailureOrSuccess,
            _that.updateFailureOrSuccess,
            _that.removeFailureOrSuccess);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AppLockState extends AppLockState {
  const _AppLockState(
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

  /// Create a copy of AppLockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppLockStateCopyWith<_AppLockState> get copyWith =>
      __$AppLockStateCopyWithImpl<_AppLockState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppLockState &&
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

  @override
  String toString() {
    return 'AppLockState(isLoading: $isLoading, isPinEnabled: $isPinEnabled, isUnlocked: $isUnlocked, lockoutRemainingSeconds: $lockoutRemainingSeconds, statusFailureOrSuccess: $statusFailureOrSuccess, verifyFailureOrSuccess: $verifyFailureOrSuccess, setFailureOrSuccess: $setFailureOrSuccess, updateFailureOrSuccess: $updateFailureOrSuccess, removeFailureOrSuccess: $removeFailureOrSuccess)';
  }
}

/// @nodoc
abstract mixin class _$AppLockStateCopyWith<$Res>
    implements $AppLockStateCopyWith<$Res> {
  factory _$AppLockStateCopyWith(
          _AppLockState value, $Res Function(_AppLockState) _then) =
      __$AppLockStateCopyWithImpl;
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
class __$AppLockStateCopyWithImpl<$Res>
    implements _$AppLockStateCopyWith<$Res> {
  __$AppLockStateCopyWithImpl(this._self, this._then);

  final _AppLockState _self;
  final $Res Function(_AppLockState) _then;

  /// Create a copy of AppLockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_AppLockState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinEnabled: null == isPinEnabled
          ? _self.isPinEnabled
          : isPinEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnlocked: null == isUnlocked
          ? _self.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      lockoutRemainingSeconds: null == lockoutRemainingSeconds
          ? _self.lockoutRemainingSeconds
          : lockoutRemainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      statusFailureOrSuccess: null == statusFailureOrSuccess
          ? _self.statusFailureOrSuccess
          : statusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, bool>>,
      verifyFailureOrSuccess: null == verifyFailureOrSuccess
          ? _self.verifyFailureOrSuccess
          : verifyFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
      setFailureOrSuccess: null == setFailureOrSuccess
          ? _self.setFailureOrSuccess
          : setFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
      updateFailureOrSuccess: null == updateFailureOrSuccess
          ? _self.updateFailureOrSuccess
          : updateFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
      removeFailureOrSuccess: null == removeFailureOrSuccess
          ? _self.removeFailureOrSuccess
          : removeFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LockFailure, Unit>>,
    ));
  }
}

// dart format on
