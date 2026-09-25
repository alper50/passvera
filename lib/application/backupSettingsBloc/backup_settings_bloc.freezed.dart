// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BackupSettingsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BackupSettingsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSettingsEvent()';
  }
}

/// @nodoc
class $BackupSettingsEventCopyWith<$Res> {
  $BackupSettingsEventCopyWith(
      BackupSettingsEvent _, $Res Function(BackupSettingsEvent) __);
}

/// Adds pattern-matching-related methods to [BackupSettingsEvent].
extension BackupSettingsEventPatterns on BackupSettingsEvent {
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
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SetupStarted value)? setupStarted,
    TResult Function(_WordsWrittenDown value)? wordsWrittenDown,
    TResult Function(_WordsRequested value)? wordsRequested,
    TResult Function(_ConfirmationSubmitted value)? confirmationSubmitted,
    TResult Function(_SetupCancelled value)? setupCancelled,
    TResult Function(_RevealRequested value)? revealRequested,
    TResult Function(_RevealHidden value)? revealHidden,
    TResult Function(_TestRequested value)? testRequested,
    TResult Function(_DisableRequested value)? disableRequested,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Loaded() when loaded != null:
        return loaded(_that);
      case _SetupStarted() when setupStarted != null:
        return setupStarted(_that);
      case _WordsWrittenDown() when wordsWrittenDown != null:
        return wordsWrittenDown(_that);
      case _WordsRequested() when wordsRequested != null:
        return wordsRequested(_that);
      case _ConfirmationSubmitted() when confirmationSubmitted != null:
        return confirmationSubmitted(_that);
      case _SetupCancelled() when setupCancelled != null:
        return setupCancelled(_that);
      case _RevealRequested() when revealRequested != null:
        return revealRequested(_that);
      case _RevealHidden() when revealHidden != null:
        return revealHidden(_that);
      case _TestRequested() when testRequested != null:
        return testRequested(_that);
      case _DisableRequested() when disableRequested != null:
        return disableRequested(_that);
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SetupStarted value) setupStarted,
    required TResult Function(_WordsWrittenDown value) wordsWrittenDown,
    required TResult Function(_WordsRequested value) wordsRequested,
    required TResult Function(_ConfirmationSubmitted value)
        confirmationSubmitted,
    required TResult Function(_SetupCancelled value) setupCancelled,
    required TResult Function(_RevealRequested value) revealRequested,
    required TResult Function(_RevealHidden value) revealHidden,
    required TResult Function(_TestRequested value) testRequested,
    required TResult Function(_DisableRequested value) disableRequested,
  }) {
    final _that = this;
    switch (_that) {
      case _Loaded():
        return loaded(_that);
      case _SetupStarted():
        return setupStarted(_that);
      case _WordsWrittenDown():
        return wordsWrittenDown(_that);
      case _WordsRequested():
        return wordsRequested(_that);
      case _ConfirmationSubmitted():
        return confirmationSubmitted(_that);
      case _SetupCancelled():
        return setupCancelled(_that);
      case _RevealRequested():
        return revealRequested(_that);
      case _RevealHidden():
        return revealHidden(_that);
      case _TestRequested():
        return testRequested(_that);
      case _DisableRequested():
        return disableRequested(_that);
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
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SetupStarted value)? setupStarted,
    TResult? Function(_WordsWrittenDown value)? wordsWrittenDown,
    TResult? Function(_WordsRequested value)? wordsRequested,
    TResult? Function(_ConfirmationSubmitted value)? confirmationSubmitted,
    TResult? Function(_SetupCancelled value)? setupCancelled,
    TResult? Function(_RevealRequested value)? revealRequested,
    TResult? Function(_RevealHidden value)? revealHidden,
    TResult? Function(_TestRequested value)? testRequested,
    TResult? Function(_DisableRequested value)? disableRequested,
  }) {
    final _that = this;
    switch (_that) {
      case _Loaded() when loaded != null:
        return loaded(_that);
      case _SetupStarted() when setupStarted != null:
        return setupStarted(_that);
      case _WordsWrittenDown() when wordsWrittenDown != null:
        return wordsWrittenDown(_that);
      case _WordsRequested() when wordsRequested != null:
        return wordsRequested(_that);
      case _ConfirmationSubmitted() when confirmationSubmitted != null:
        return confirmationSubmitted(_that);
      case _SetupCancelled() when setupCancelled != null:
        return setupCancelled(_that);
      case _RevealRequested() when revealRequested != null:
        return revealRequested(_that);
      case _RevealHidden() when revealHidden != null:
        return revealHidden(_that);
      case _TestRequested() when testRequested != null:
        return testRequested(_that);
      case _DisableRequested() when disableRequested != null:
        return disableRequested(_that);
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
    TResult Function()? loaded,
    TResult Function()? setupStarted,
    TResult Function()? wordsWrittenDown,
    TResult Function()? wordsRequested,
    TResult Function(List<String> answers)? confirmationSubmitted,
    TResult Function()? setupCancelled,
    TResult Function(String? pin)? revealRequested,
    TResult Function()? revealHidden,
    TResult Function(List<String> words)? testRequested,
    TResult Function(bool deleteRemote)? disableRequested,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Loaded() when loaded != null:
        return loaded();
      case _SetupStarted() when setupStarted != null:
        return setupStarted();
      case _WordsWrittenDown() when wordsWrittenDown != null:
        return wordsWrittenDown();
      case _WordsRequested() when wordsRequested != null:
        return wordsRequested();
      case _ConfirmationSubmitted() when confirmationSubmitted != null:
        return confirmationSubmitted(_that.answers);
      case _SetupCancelled() when setupCancelled != null:
        return setupCancelled();
      case _RevealRequested() when revealRequested != null:
        return revealRequested(_that.pin);
      case _RevealHidden() when revealHidden != null:
        return revealHidden();
      case _TestRequested() when testRequested != null:
        return testRequested(_that.words);
      case _DisableRequested() when disableRequested != null:
        return disableRequested(_that.deleteRemote);
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
    required TResult Function() loaded,
    required TResult Function() setupStarted,
    required TResult Function() wordsWrittenDown,
    required TResult Function() wordsRequested,
    required TResult Function(List<String> answers) confirmationSubmitted,
    required TResult Function() setupCancelled,
    required TResult Function(String? pin) revealRequested,
    required TResult Function() revealHidden,
    required TResult Function(List<String> words) testRequested,
    required TResult Function(bool deleteRemote) disableRequested,
  }) {
    final _that = this;
    switch (_that) {
      case _Loaded():
        return loaded();
      case _SetupStarted():
        return setupStarted();
      case _WordsWrittenDown():
        return wordsWrittenDown();
      case _WordsRequested():
        return wordsRequested();
      case _ConfirmationSubmitted():
        return confirmationSubmitted(_that.answers);
      case _SetupCancelled():
        return setupCancelled();
      case _RevealRequested():
        return revealRequested(_that.pin);
      case _RevealHidden():
        return revealHidden();
      case _TestRequested():
        return testRequested(_that.words);
      case _DisableRequested():
        return disableRequested(_that.deleteRemote);
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
    TResult? Function()? loaded,
    TResult? Function()? setupStarted,
    TResult? Function()? wordsWrittenDown,
    TResult? Function()? wordsRequested,
    TResult? Function(List<String> answers)? confirmationSubmitted,
    TResult? Function()? setupCancelled,
    TResult? Function(String? pin)? revealRequested,
    TResult? Function()? revealHidden,
    TResult? Function(List<String> words)? testRequested,
    TResult? Function(bool deleteRemote)? disableRequested,
  }) {
    final _that = this;
    switch (_that) {
      case _Loaded() when loaded != null:
        return loaded();
      case _SetupStarted() when setupStarted != null:
        return setupStarted();
      case _WordsWrittenDown() when wordsWrittenDown != null:
        return wordsWrittenDown();
      case _WordsRequested() when wordsRequested != null:
        return wordsRequested();
      case _ConfirmationSubmitted() when confirmationSubmitted != null:
        return confirmationSubmitted(_that.answers);
      case _SetupCancelled() when setupCancelled != null:
        return setupCancelled();
      case _RevealRequested() when revealRequested != null:
        return revealRequested(_that.pin);
      case _RevealHidden() when revealHidden != null:
        return revealHidden();
      case _TestRequested() when testRequested != null:
        return testRequested(_that.words);
      case _DisableRequested() when disableRequested != null:
        return disableRequested(_that.deleteRemote);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Loaded implements BackupSettingsEvent {
  const _Loaded();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSettingsEvent.loaded()';
  }
}

/// @nodoc

class _SetupStarted implements BackupSettingsEvent {
  const _SetupStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SetupStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSettingsEvent.setupStarted()';
  }
}

/// @nodoc

class _WordsWrittenDown implements BackupSettingsEvent {
  const _WordsWrittenDown();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WordsWrittenDown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSettingsEvent.wordsWrittenDown()';
  }
}

/// @nodoc

class _WordsRequested implements BackupSettingsEvent {
  const _WordsRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WordsRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSettingsEvent.wordsRequested()';
  }
}

/// @nodoc

class _ConfirmationSubmitted implements BackupSettingsEvent {
  const _ConfirmationSubmitted(final List<String> answers) : _answers = answers;

  final List<String> _answers;
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  /// Create a copy of BackupSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConfirmationSubmittedCopyWith<_ConfirmationSubmitted> get copyWith =>
      __$ConfirmationSubmittedCopyWithImpl<_ConfirmationSubmitted>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfirmationSubmitted &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_answers));

  @override
  String toString() {
    return 'BackupSettingsEvent.confirmationSubmitted(answers: $answers)';
  }
}

/// @nodoc
abstract mixin class _$ConfirmationSubmittedCopyWith<$Res>
    implements $BackupSettingsEventCopyWith<$Res> {
  factory _$ConfirmationSubmittedCopyWith(_ConfirmationSubmitted value,
          $Res Function(_ConfirmationSubmitted) _then) =
      __$ConfirmationSubmittedCopyWithImpl;
  @useResult
  $Res call({List<String> answers});
}

/// @nodoc
class __$ConfirmationSubmittedCopyWithImpl<$Res>
    implements _$ConfirmationSubmittedCopyWith<$Res> {
  __$ConfirmationSubmittedCopyWithImpl(this._self, this._then);

  final _ConfirmationSubmitted _self;
  final $Res Function(_ConfirmationSubmitted) _then;

  /// Create a copy of BackupSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? answers = null,
  }) {
    return _then(_ConfirmationSubmitted(
      null == answers
          ? _self._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _SetupCancelled implements BackupSettingsEvent {
  const _SetupCancelled();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SetupCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSettingsEvent.setupCancelled()';
  }
}

/// @nodoc

class _RevealRequested implements BackupSettingsEvent {
  const _RevealRequested({this.pin});

  final String? pin;

  /// Create a copy of BackupSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RevealRequestedCopyWith<_RevealRequested> get copyWith =>
      __$RevealRequestedCopyWithImpl<_RevealRequested>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RevealRequested &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @override
  String toString() {
    return 'BackupSettingsEvent.revealRequested(pin: $pin)';
  }
}

/// @nodoc
abstract mixin class _$RevealRequestedCopyWith<$Res>
    implements $BackupSettingsEventCopyWith<$Res> {
  factory _$RevealRequestedCopyWith(
          _RevealRequested value, $Res Function(_RevealRequested) _then) =
      __$RevealRequestedCopyWithImpl;
  @useResult
  $Res call({String? pin});
}

/// @nodoc
class __$RevealRequestedCopyWithImpl<$Res>
    implements _$RevealRequestedCopyWith<$Res> {
  __$RevealRequestedCopyWithImpl(this._self, this._then);

  final _RevealRequested _self;
  final $Res Function(_RevealRequested) _then;

  /// Create a copy of BackupSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pin = freezed,
  }) {
    return _then(_RevealRequested(
      pin: freezed == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _RevealHidden implements BackupSettingsEvent {
  const _RevealHidden();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RevealHidden);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSettingsEvent.revealHidden()';
  }
}

/// @nodoc

class _TestRequested implements BackupSettingsEvent {
  const _TestRequested(final List<String> words) : _words = words;

  final List<String> _words;
  List<String> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  /// Create a copy of BackupSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TestRequestedCopyWith<_TestRequested> get copyWith =>
      __$TestRequestedCopyWithImpl<_TestRequested>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestRequested &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @override
  String toString() {
    return 'BackupSettingsEvent.testRequested(words: $words)';
  }
}

/// @nodoc
abstract mixin class _$TestRequestedCopyWith<$Res>
    implements $BackupSettingsEventCopyWith<$Res> {
  factory _$TestRequestedCopyWith(
          _TestRequested value, $Res Function(_TestRequested) _then) =
      __$TestRequestedCopyWithImpl;
  @useResult
  $Res call({List<String> words});
}

/// @nodoc
class __$TestRequestedCopyWithImpl<$Res>
    implements _$TestRequestedCopyWith<$Res> {
  __$TestRequestedCopyWithImpl(this._self, this._then);

  final _TestRequested _self;
  final $Res Function(_TestRequested) _then;

  /// Create a copy of BackupSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? words = null,
  }) {
    return _then(_TestRequested(
      null == words
          ? _self._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _DisableRequested implements BackupSettingsEvent {
  const _DisableRequested({required this.deleteRemote});

  final bool deleteRemote;

  /// Create a copy of BackupSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DisableRequestedCopyWith<_DisableRequested> get copyWith =>
      __$DisableRequestedCopyWithImpl<_DisableRequested>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DisableRequested &&
            (identical(other.deleteRemote, deleteRemote) ||
                other.deleteRemote == deleteRemote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteRemote);

  @override
  String toString() {
    return 'BackupSettingsEvent.disableRequested(deleteRemote: $deleteRemote)';
  }
}

/// @nodoc
abstract mixin class _$DisableRequestedCopyWith<$Res>
    implements $BackupSettingsEventCopyWith<$Res> {
  factory _$DisableRequestedCopyWith(
          _DisableRequested value, $Res Function(_DisableRequested) _then) =
      __$DisableRequestedCopyWithImpl;
  @useResult
  $Res call({bool deleteRemote});
}

/// @nodoc
class __$DisableRequestedCopyWithImpl<$Res>
    implements _$DisableRequestedCopyWith<$Res> {
  __$DisableRequestedCopyWithImpl(this._self, this._then);

  final _DisableRequested _self;
  final $Res Function(_DisableRequested) _then;

  /// Create a copy of BackupSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deleteRemote = null,
  }) {
    return _then(_DisableRequested(
      deleteRemote: null == deleteRemote
          ? _self.deleteRemote
          : deleteRemote // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$BackupSettingsState {
  BackupStatus? get status;

  /// Showing the key needs the PIN when one is set.
  bool get isPinSet;
  bool get isBusy;
  BackupSetupStep get setupStep;
  String? get setupAccount;

  /// Generated for setup; stored only once confirmed.
  RecoveryKey? get pendingKey;

  /// Zero-based word indices asked back during setup.
  List<int> get confirmPositions;

  /// The stored key, shown after a PIN check.
  RecoveryKey? get revealedKey;
  Option<BackupFailure> get failure;
  Option<LockFailure> get lockFailure;
  Option<BackupSettingsNotice> get notice;

  /// Create a copy of BackupSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupSettingsStateCopyWith<BackupSettingsState> get copyWith =>
      _$BackupSettingsStateCopyWithImpl<BackupSettingsState>(
          this as BackupSettingsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupSettingsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isPinSet, isPinSet) ||
                other.isPinSet == isPinSet) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.setupStep, setupStep) ||
                other.setupStep == setupStep) &&
            (identical(other.setupAccount, setupAccount) ||
                other.setupAccount == setupAccount) &&
            (identical(other.pendingKey, pendingKey) ||
                other.pendingKey == pendingKey) &&
            const DeepCollectionEquality()
                .equals(other.confirmPositions, confirmPositions) &&
            (identical(other.revealedKey, revealedKey) ||
                other.revealedKey == revealedKey) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.lockFailure, lockFailure) ||
                other.lockFailure == lockFailure) &&
            (identical(other.notice, notice) || other.notice == notice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      isPinSet,
      isBusy,
      setupStep,
      setupAccount,
      pendingKey,
      const DeepCollectionEquality().hash(confirmPositions),
      revealedKey,
      failure,
      lockFailure,
      notice);

  @override
  String toString() {
    return 'BackupSettingsState(status: $status, isPinSet: $isPinSet, isBusy: $isBusy, setupStep: $setupStep, setupAccount: $setupAccount, pendingKey: $pendingKey, confirmPositions: $confirmPositions, revealedKey: $revealedKey, failure: $failure, lockFailure: $lockFailure, notice: $notice)';
  }
}

/// @nodoc
abstract mixin class $BackupSettingsStateCopyWith<$Res> {
  factory $BackupSettingsStateCopyWith(
          BackupSettingsState value, $Res Function(BackupSettingsState) _then) =
      _$BackupSettingsStateCopyWithImpl;
  @useResult
  $Res call(
      {BackupStatus? status,
      bool isPinSet,
      bool isBusy,
      BackupSetupStep setupStep,
      String? setupAccount,
      RecoveryKey? pendingKey,
      List<int> confirmPositions,
      RecoveryKey? revealedKey,
      Option<BackupFailure> failure,
      Option<LockFailure> lockFailure,
      Option<BackupSettingsNotice> notice});

  $BackupStatusCopyWith<$Res>? get status;
  $RecoveryKeyCopyWith<$Res>? get pendingKey;
  $RecoveryKeyCopyWith<$Res>? get revealedKey;
}

/// @nodoc
class _$BackupSettingsStateCopyWithImpl<$Res>
    implements $BackupSettingsStateCopyWith<$Res> {
  _$BackupSettingsStateCopyWithImpl(this._self, this._then);

  final BackupSettingsState _self;
  final $Res Function(BackupSettingsState) _then;

  /// Create a copy of BackupSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? isPinSet = null,
    Object? isBusy = null,
    Object? setupStep = null,
    Object? setupAccount = freezed,
    Object? pendingKey = freezed,
    Object? confirmPositions = null,
    Object? revealedKey = freezed,
    Object? failure = null,
    Object? lockFailure = null,
    Object? notice = null,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BackupStatus?,
      isPinSet: null == isPinSet
          ? _self.isPinSet
          : isPinSet // ignore: cast_nullable_to_non_nullable
              as bool,
      isBusy: null == isBusy
          ? _self.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      setupStep: null == setupStep
          ? _self.setupStep
          : setupStep // ignore: cast_nullable_to_non_nullable
              as BackupSetupStep,
      setupAccount: freezed == setupAccount
          ? _self.setupAccount
          : setupAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingKey: freezed == pendingKey
          ? _self.pendingKey
          : pendingKey // ignore: cast_nullable_to_non_nullable
              as RecoveryKey?,
      confirmPositions: null == confirmPositions
          ? _self.confirmPositions
          : confirmPositions // ignore: cast_nullable_to_non_nullable
              as List<int>,
      revealedKey: freezed == revealedKey
          ? _self.revealedKey
          : revealedKey // ignore: cast_nullable_to_non_nullable
              as RecoveryKey?,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<BackupFailure>,
      lockFailure: null == lockFailure
          ? _self.lockFailure
          : lockFailure // ignore: cast_nullable_to_non_nullable
              as Option<LockFailure>,
      notice: null == notice
          ? _self.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as Option<BackupSettingsNotice>,
    ));
  }

  /// Create a copy of BackupSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackupStatusCopyWith<$Res>? get status {
    if (_self.status == null) {
      return null;
    }

    return $BackupStatusCopyWith<$Res>(_self.status!, (value) {
      return _then(_self.copyWith(status: value));
    });
  }

  /// Create a copy of BackupSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecoveryKeyCopyWith<$Res>? get pendingKey {
    if (_self.pendingKey == null) {
      return null;
    }

    return $RecoveryKeyCopyWith<$Res>(_self.pendingKey!, (value) {
      return _then(_self.copyWith(pendingKey: value));
    });
  }

  /// Create a copy of BackupSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecoveryKeyCopyWith<$Res>? get revealedKey {
    if (_self.revealedKey == null) {
      return null;
    }

    return $RecoveryKeyCopyWith<$Res>(_self.revealedKey!, (value) {
      return _then(_self.copyWith(revealedKey: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BackupSettingsState].
extension BackupSettingsStatePatterns on BackupSettingsState {
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
    TResult Function(_BackupSettingsState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BackupSettingsState() when $default != null:
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
    TResult Function(_BackupSettingsState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupSettingsState():
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
    TResult? Function(_BackupSettingsState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupSettingsState() when $default != null:
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
            BackupStatus? status,
            bool isPinSet,
            bool isBusy,
            BackupSetupStep setupStep,
            String? setupAccount,
            RecoveryKey? pendingKey,
            List<int> confirmPositions,
            RecoveryKey? revealedKey,
            Option<BackupFailure> failure,
            Option<LockFailure> lockFailure,
            Option<BackupSettingsNotice> notice)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BackupSettingsState() when $default != null:
        return $default(
            _that.status,
            _that.isPinSet,
            _that.isBusy,
            _that.setupStep,
            _that.setupAccount,
            _that.pendingKey,
            _that.confirmPositions,
            _that.revealedKey,
            _that.failure,
            _that.lockFailure,
            _that.notice);
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
            BackupStatus? status,
            bool isPinSet,
            bool isBusy,
            BackupSetupStep setupStep,
            String? setupAccount,
            RecoveryKey? pendingKey,
            List<int> confirmPositions,
            RecoveryKey? revealedKey,
            Option<BackupFailure> failure,
            Option<LockFailure> lockFailure,
            Option<BackupSettingsNotice> notice)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupSettingsState():
        return $default(
            _that.status,
            _that.isPinSet,
            _that.isBusy,
            _that.setupStep,
            _that.setupAccount,
            _that.pendingKey,
            _that.confirmPositions,
            _that.revealedKey,
            _that.failure,
            _that.lockFailure,
            _that.notice);
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
            BackupStatus? status,
            bool isPinSet,
            bool isBusy,
            BackupSetupStep setupStep,
            String? setupAccount,
            RecoveryKey? pendingKey,
            List<int> confirmPositions,
            RecoveryKey? revealedKey,
            Option<BackupFailure> failure,
            Option<LockFailure> lockFailure,
            Option<BackupSettingsNotice> notice)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupSettingsState() when $default != null:
        return $default(
            _that.status,
            _that.isPinSet,
            _that.isBusy,
            _that.setupStep,
            _that.setupAccount,
            _that.pendingKey,
            _that.confirmPositions,
            _that.revealedKey,
            _that.failure,
            _that.lockFailure,
            _that.notice);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BackupSettingsState implements BackupSettingsState {
  const _BackupSettingsState(
      {this.status,
      required this.isPinSet,
      required this.isBusy,
      required this.setupStep,
      this.setupAccount,
      this.pendingKey,
      required final List<int> confirmPositions,
      this.revealedKey,
      required this.failure,
      required this.lockFailure,
      required this.notice})
      : _confirmPositions = confirmPositions;

  @override
  final BackupStatus? status;

  /// Showing the key needs the PIN when one is set.
  @override
  final bool isPinSet;
  @override
  final bool isBusy;
  @override
  final BackupSetupStep setupStep;
  @override
  final String? setupAccount;

  /// Generated for setup; stored only once confirmed.
  @override
  final RecoveryKey? pendingKey;

  /// Zero-based word indices asked back during setup.
  final List<int> _confirmPositions;

  /// Zero-based word indices asked back during setup.
  @override
  List<int> get confirmPositions {
    if (_confirmPositions is EqualUnmodifiableListView)
      return _confirmPositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_confirmPositions);
  }

  /// The stored key, shown after a PIN check.
  @override
  final RecoveryKey? revealedKey;
  @override
  final Option<BackupFailure> failure;
  @override
  final Option<LockFailure> lockFailure;
  @override
  final Option<BackupSettingsNotice> notice;

  /// Create a copy of BackupSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BackupSettingsStateCopyWith<_BackupSettingsState> get copyWith =>
      __$BackupSettingsStateCopyWithImpl<_BackupSettingsState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BackupSettingsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isPinSet, isPinSet) ||
                other.isPinSet == isPinSet) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.setupStep, setupStep) ||
                other.setupStep == setupStep) &&
            (identical(other.setupAccount, setupAccount) ||
                other.setupAccount == setupAccount) &&
            (identical(other.pendingKey, pendingKey) ||
                other.pendingKey == pendingKey) &&
            const DeepCollectionEquality()
                .equals(other._confirmPositions, _confirmPositions) &&
            (identical(other.revealedKey, revealedKey) ||
                other.revealedKey == revealedKey) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.lockFailure, lockFailure) ||
                other.lockFailure == lockFailure) &&
            (identical(other.notice, notice) || other.notice == notice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      isPinSet,
      isBusy,
      setupStep,
      setupAccount,
      pendingKey,
      const DeepCollectionEquality().hash(_confirmPositions),
      revealedKey,
      failure,
      lockFailure,
      notice);

  @override
  String toString() {
    return 'BackupSettingsState(status: $status, isPinSet: $isPinSet, isBusy: $isBusy, setupStep: $setupStep, setupAccount: $setupAccount, pendingKey: $pendingKey, confirmPositions: $confirmPositions, revealedKey: $revealedKey, failure: $failure, lockFailure: $lockFailure, notice: $notice)';
  }
}

/// @nodoc
abstract mixin class _$BackupSettingsStateCopyWith<$Res>
    implements $BackupSettingsStateCopyWith<$Res> {
  factory _$BackupSettingsStateCopyWith(_BackupSettingsState value,
          $Res Function(_BackupSettingsState) _then) =
      __$BackupSettingsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {BackupStatus? status,
      bool isPinSet,
      bool isBusy,
      BackupSetupStep setupStep,
      String? setupAccount,
      RecoveryKey? pendingKey,
      List<int> confirmPositions,
      RecoveryKey? revealedKey,
      Option<BackupFailure> failure,
      Option<LockFailure> lockFailure,
      Option<BackupSettingsNotice> notice});

  @override
  $BackupStatusCopyWith<$Res>? get status;
  @override
  $RecoveryKeyCopyWith<$Res>? get pendingKey;
  @override
  $RecoveryKeyCopyWith<$Res>? get revealedKey;
}

/// @nodoc
class __$BackupSettingsStateCopyWithImpl<$Res>
    implements _$BackupSettingsStateCopyWith<$Res> {
  __$BackupSettingsStateCopyWithImpl(this._self, this._then);

  final _BackupSettingsState _self;
  final $Res Function(_BackupSettingsState) _then;

  /// Create a copy of BackupSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? isPinSet = null,
    Object? isBusy = null,
    Object? setupStep = null,
    Object? setupAccount = freezed,
    Object? pendingKey = freezed,
    Object? confirmPositions = null,
    Object? revealedKey = freezed,
    Object? failure = null,
    Object? lockFailure = null,
    Object? notice = null,
  }) {
    return _then(_BackupSettingsState(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BackupStatus?,
      isPinSet: null == isPinSet
          ? _self.isPinSet
          : isPinSet // ignore: cast_nullable_to_non_nullable
              as bool,
      isBusy: null == isBusy
          ? _self.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      setupStep: null == setupStep
          ? _self.setupStep
          : setupStep // ignore: cast_nullable_to_non_nullable
              as BackupSetupStep,
      setupAccount: freezed == setupAccount
          ? _self.setupAccount
          : setupAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingKey: freezed == pendingKey
          ? _self.pendingKey
          : pendingKey // ignore: cast_nullable_to_non_nullable
              as RecoveryKey?,
      confirmPositions: null == confirmPositions
          ? _self._confirmPositions
          : confirmPositions // ignore: cast_nullable_to_non_nullable
              as List<int>,
      revealedKey: freezed == revealedKey
          ? _self.revealedKey
          : revealedKey // ignore: cast_nullable_to_non_nullable
              as RecoveryKey?,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<BackupFailure>,
      lockFailure: null == lockFailure
          ? _self.lockFailure
          : lockFailure // ignore: cast_nullable_to_non_nullable
              as Option<LockFailure>,
      notice: null == notice
          ? _self.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as Option<BackupSettingsNotice>,
    ));
  }

  /// Create a copy of BackupSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackupStatusCopyWith<$Res>? get status {
    if (_self.status == null) {
      return null;
    }

    return $BackupStatusCopyWith<$Res>(_self.status!, (value) {
      return _then(_self.copyWith(status: value));
    });
  }

  /// Create a copy of BackupSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecoveryKeyCopyWith<$Res>? get pendingKey {
    if (_self.pendingKey == null) {
      return null;
    }

    return $RecoveryKeyCopyWith<$Res>(_self.pendingKey!, (value) {
      return _then(_self.copyWith(pendingKey: value));
    });
  }

  /// Create a copy of BackupSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecoveryKeyCopyWith<$Res>? get revealedKey {
    if (_self.revealedKey == null) {
      return null;
    }

    return $RecoveryKeyCopyWith<$Res>(_self.revealedKey!, (value) {
      return _then(_self.copyWith(revealedKey: value));
    });
  }
}

// dart format on
