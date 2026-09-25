// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restore_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestoreEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RestoreEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RestoreEvent()';
  }
}

/// @nodoc
class $RestoreEventCopyWith<$Res> {
  $RestoreEventCopyWith(RestoreEvent _, $Res Function(RestoreEvent) __);
}

/// Adds pattern-matching-related methods to [RestoreEvent].
extension RestoreEventPatterns on RestoreEvent {
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
    TResult Function(_Started value)? started,
    TResult Function(_ConnectRequested value)? connectRequested,
    TResult Function(_BackupSelected value)? backupSelected,
    TResult Function(_BackupConfirmed value)? backupConfirmed,
    TResult Function(_KeySubmitted value)? keySubmitted,
    TResult Function(_ModeChanged value)? modeChanged,
    TResult Function(_KeepBackingUpChanged value)? keepBackingUpChanged,
    TResult Function(_RestoreConfirmed value)? restoreConfirmed,
    TResult Function(_BackPressed value)? backPressed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _ConnectRequested() when connectRequested != null:
        return connectRequested(_that);
      case _BackupSelected() when backupSelected != null:
        return backupSelected(_that);
      case _BackupConfirmed() when backupConfirmed != null:
        return backupConfirmed(_that);
      case _KeySubmitted() when keySubmitted != null:
        return keySubmitted(_that);
      case _ModeChanged() when modeChanged != null:
        return modeChanged(_that);
      case _KeepBackingUpChanged() when keepBackingUpChanged != null:
        return keepBackingUpChanged(_that);
      case _RestoreConfirmed() when restoreConfirmed != null:
        return restoreConfirmed(_that);
      case _BackPressed() when backPressed != null:
        return backPressed(_that);
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
    required TResult Function(_Started value) started,
    required TResult Function(_ConnectRequested value) connectRequested,
    required TResult Function(_BackupSelected value) backupSelected,
    required TResult Function(_BackupConfirmed value) backupConfirmed,
    required TResult Function(_KeySubmitted value) keySubmitted,
    required TResult Function(_ModeChanged value) modeChanged,
    required TResult Function(_KeepBackingUpChanged value) keepBackingUpChanged,
    required TResult Function(_RestoreConfirmed value) restoreConfirmed,
    required TResult Function(_BackPressed value) backPressed,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case _ConnectRequested():
        return connectRequested(_that);
      case _BackupSelected():
        return backupSelected(_that);
      case _BackupConfirmed():
        return backupConfirmed(_that);
      case _KeySubmitted():
        return keySubmitted(_that);
      case _ModeChanged():
        return modeChanged(_that);
      case _KeepBackingUpChanged():
        return keepBackingUpChanged(_that);
      case _RestoreConfirmed():
        return restoreConfirmed(_that);
      case _BackPressed():
        return backPressed(_that);
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
    TResult? Function(_Started value)? started,
    TResult? Function(_ConnectRequested value)? connectRequested,
    TResult? Function(_BackupSelected value)? backupSelected,
    TResult? Function(_BackupConfirmed value)? backupConfirmed,
    TResult? Function(_KeySubmitted value)? keySubmitted,
    TResult? Function(_ModeChanged value)? modeChanged,
    TResult? Function(_KeepBackingUpChanged value)? keepBackingUpChanged,
    TResult? Function(_RestoreConfirmed value)? restoreConfirmed,
    TResult? Function(_BackPressed value)? backPressed,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _ConnectRequested() when connectRequested != null:
        return connectRequested(_that);
      case _BackupSelected() when backupSelected != null:
        return backupSelected(_that);
      case _BackupConfirmed() when backupConfirmed != null:
        return backupConfirmed(_that);
      case _KeySubmitted() when keySubmitted != null:
        return keySubmitted(_that);
      case _ModeChanged() when modeChanged != null:
        return modeChanged(_that);
      case _KeepBackingUpChanged() when keepBackingUpChanged != null:
        return keepBackingUpChanged(_that);
      case _RestoreConfirmed() when restoreConfirmed != null:
        return restoreConfirmed(_that);
      case _BackPressed() when backPressed != null:
        return backPressed(_that);
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
    TResult Function()? started,
    TResult Function()? connectRequested,
    TResult Function(RemoteBackup backup)? backupSelected,
    TResult Function()? backupConfirmed,
    TResult Function(List<String> words)? keySubmitted,
    TResult Function(RestoreMode mode)? modeChanged,
    TResult Function(bool keep)? keepBackingUpChanged,
    TResult Function()? restoreConfirmed,
    TResult Function()? backPressed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _ConnectRequested() when connectRequested != null:
        return connectRequested();
      case _BackupSelected() when backupSelected != null:
        return backupSelected(_that.backup);
      case _BackupConfirmed() when backupConfirmed != null:
        return backupConfirmed();
      case _KeySubmitted() when keySubmitted != null:
        return keySubmitted(_that.words);
      case _ModeChanged() when modeChanged != null:
        return modeChanged(_that.mode);
      case _KeepBackingUpChanged() when keepBackingUpChanged != null:
        return keepBackingUpChanged(_that.keep);
      case _RestoreConfirmed() when restoreConfirmed != null:
        return restoreConfirmed();
      case _BackPressed() when backPressed != null:
        return backPressed();
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
    required TResult Function() started,
    required TResult Function() connectRequested,
    required TResult Function(RemoteBackup backup) backupSelected,
    required TResult Function() backupConfirmed,
    required TResult Function(List<String> words) keySubmitted,
    required TResult Function(RestoreMode mode) modeChanged,
    required TResult Function(bool keep) keepBackingUpChanged,
    required TResult Function() restoreConfirmed,
    required TResult Function() backPressed,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case _ConnectRequested():
        return connectRequested();
      case _BackupSelected():
        return backupSelected(_that.backup);
      case _BackupConfirmed():
        return backupConfirmed();
      case _KeySubmitted():
        return keySubmitted(_that.words);
      case _ModeChanged():
        return modeChanged(_that.mode);
      case _KeepBackingUpChanged():
        return keepBackingUpChanged(_that.keep);
      case _RestoreConfirmed():
        return restoreConfirmed();
      case _BackPressed():
        return backPressed();
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
    TResult? Function()? started,
    TResult? Function()? connectRequested,
    TResult? Function(RemoteBackup backup)? backupSelected,
    TResult? Function()? backupConfirmed,
    TResult? Function(List<String> words)? keySubmitted,
    TResult? Function(RestoreMode mode)? modeChanged,
    TResult? Function(bool keep)? keepBackingUpChanged,
    TResult? Function()? restoreConfirmed,
    TResult? Function()? backPressed,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _ConnectRequested() when connectRequested != null:
        return connectRequested();
      case _BackupSelected() when backupSelected != null:
        return backupSelected(_that.backup);
      case _BackupConfirmed() when backupConfirmed != null:
        return backupConfirmed();
      case _KeySubmitted() when keySubmitted != null:
        return keySubmitted(_that.words);
      case _ModeChanged() when modeChanged != null:
        return modeChanged(_that.mode);
      case _KeepBackingUpChanged() when keepBackingUpChanged != null:
        return keepBackingUpChanged(_that.keep);
      case _RestoreConfirmed() when restoreConfirmed != null:
        return restoreConfirmed();
      case _BackPressed() when backPressed != null:
        return backPressed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements RestoreEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RestoreEvent.started()';
  }
}

/// @nodoc

class _ConnectRequested implements RestoreEvent {
  const _ConnectRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConnectRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RestoreEvent.connectRequested()';
  }
}

/// @nodoc

class _BackupSelected implements RestoreEvent {
  const _BackupSelected(this.backup);

  final RemoteBackup backup;

  /// Create a copy of RestoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BackupSelectedCopyWith<_BackupSelected> get copyWith =>
      __$BackupSelectedCopyWithImpl<_BackupSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BackupSelected &&
            (identical(other.backup, backup) || other.backup == backup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, backup);

  @override
  String toString() {
    return 'RestoreEvent.backupSelected(backup: $backup)';
  }
}

/// @nodoc
abstract mixin class _$BackupSelectedCopyWith<$Res>
    implements $RestoreEventCopyWith<$Res> {
  factory _$BackupSelectedCopyWith(
          _BackupSelected value, $Res Function(_BackupSelected) _then) =
      __$BackupSelectedCopyWithImpl;
  @useResult
  $Res call({RemoteBackup backup});

  $RemoteBackupCopyWith<$Res> get backup;
}

/// @nodoc
class __$BackupSelectedCopyWithImpl<$Res>
    implements _$BackupSelectedCopyWith<$Res> {
  __$BackupSelectedCopyWithImpl(this._self, this._then);

  final _BackupSelected _self;
  final $Res Function(_BackupSelected) _then;

  /// Create a copy of RestoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backup = null,
  }) {
    return _then(_BackupSelected(
      null == backup
          ? _self.backup
          : backup // ignore: cast_nullable_to_non_nullable
              as RemoteBackup,
    ));
  }

  /// Create a copy of RestoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemoteBackupCopyWith<$Res> get backup {
    return $RemoteBackupCopyWith<$Res>(_self.backup, (value) {
      return _then(_self.copyWith(backup: value));
    });
  }
}

/// @nodoc

class _BackupConfirmed implements RestoreEvent {
  const _BackupConfirmed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BackupConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RestoreEvent.backupConfirmed()';
  }
}

/// @nodoc

class _KeySubmitted implements RestoreEvent {
  const _KeySubmitted(final List<String> words) : _words = words;

  final List<String> _words;
  List<String> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  /// Create a copy of RestoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeySubmittedCopyWith<_KeySubmitted> get copyWith =>
      __$KeySubmittedCopyWithImpl<_KeySubmitted>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeySubmitted &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @override
  String toString() {
    return 'RestoreEvent.keySubmitted(words: $words)';
  }
}

/// @nodoc
abstract mixin class _$KeySubmittedCopyWith<$Res>
    implements $RestoreEventCopyWith<$Res> {
  factory _$KeySubmittedCopyWith(
          _KeySubmitted value, $Res Function(_KeySubmitted) _then) =
      __$KeySubmittedCopyWithImpl;
  @useResult
  $Res call({List<String> words});
}

/// @nodoc
class __$KeySubmittedCopyWithImpl<$Res>
    implements _$KeySubmittedCopyWith<$Res> {
  __$KeySubmittedCopyWithImpl(this._self, this._then);

  final _KeySubmitted _self;
  final $Res Function(_KeySubmitted) _then;

  /// Create a copy of RestoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? words = null,
  }) {
    return _then(_KeySubmitted(
      null == words
          ? _self._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _ModeChanged implements RestoreEvent {
  const _ModeChanged(this.mode);

  final RestoreMode mode;

  /// Create a copy of RestoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModeChangedCopyWith<_ModeChanged> get copyWith =>
      __$ModeChangedCopyWithImpl<_ModeChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModeChanged &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @override
  String toString() {
    return 'RestoreEvent.modeChanged(mode: $mode)';
  }
}

/// @nodoc
abstract mixin class _$ModeChangedCopyWith<$Res>
    implements $RestoreEventCopyWith<$Res> {
  factory _$ModeChangedCopyWith(
          _ModeChanged value, $Res Function(_ModeChanged) _then) =
      __$ModeChangedCopyWithImpl;
  @useResult
  $Res call({RestoreMode mode});
}

/// @nodoc
class __$ModeChangedCopyWithImpl<$Res> implements _$ModeChangedCopyWith<$Res> {
  __$ModeChangedCopyWithImpl(this._self, this._then);

  final _ModeChanged _self;
  final $Res Function(_ModeChanged) _then;

  /// Create a copy of RestoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mode = null,
  }) {
    return _then(_ModeChanged(
      null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as RestoreMode,
    ));
  }
}

/// @nodoc

class _KeepBackingUpChanged implements RestoreEvent {
  const _KeepBackingUpChanged(this.keep);

  final bool keep;

  /// Create a copy of RestoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeepBackingUpChangedCopyWith<_KeepBackingUpChanged> get copyWith =>
      __$KeepBackingUpChangedCopyWithImpl<_KeepBackingUpChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeepBackingUpChanged &&
            (identical(other.keep, keep) || other.keep == keep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keep);

  @override
  String toString() {
    return 'RestoreEvent.keepBackingUpChanged(keep: $keep)';
  }
}

/// @nodoc
abstract mixin class _$KeepBackingUpChangedCopyWith<$Res>
    implements $RestoreEventCopyWith<$Res> {
  factory _$KeepBackingUpChangedCopyWith(_KeepBackingUpChanged value,
          $Res Function(_KeepBackingUpChanged) _then) =
      __$KeepBackingUpChangedCopyWithImpl;
  @useResult
  $Res call({bool keep});
}

/// @nodoc
class __$KeepBackingUpChangedCopyWithImpl<$Res>
    implements _$KeepBackingUpChangedCopyWith<$Res> {
  __$KeepBackingUpChangedCopyWithImpl(this._self, this._then);

  final _KeepBackingUpChanged _self;
  final $Res Function(_KeepBackingUpChanged) _then;

  /// Create a copy of RestoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keep = null,
  }) {
    return _then(_KeepBackingUpChanged(
      null == keep
          ? _self.keep
          : keep // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _RestoreConfirmed implements RestoreEvent {
  const _RestoreConfirmed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RestoreConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RestoreEvent.restoreConfirmed()';
  }
}

/// @nodoc

class _BackPressed implements RestoreEvent {
  const _BackPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BackPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RestoreEvent.backPressed()';
  }
}

/// @nodoc
mixin _$RestoreState {
  RestoreStep get step;
  bool get isBusy;
  String? get account;
  List<RemoteBackup> get backups;
  RemoteBackup? get selected;
  RecoveryKey? get key;
  BackupPayload? get payload;

  /// Replace is only offered when there is something to replace.
  bool get vaultHasEntries;
  RestoreMode get mode;

  /// Turn on automatic backup with the same key and account afterwards.
  bool get keepBackingUp;

  /// Entries written by the finished restore.
  int get restoredCount;
  Option<BackupFailure> get failure;

  /// Create a copy of RestoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestoreStateCopyWith<RestoreState> get copyWith =>
      _$RestoreStateCopyWithImpl<RestoreState>(
          this as RestoreState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestoreState &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality().equals(other.backups, backups) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.vaultHasEntries, vaultHasEntries) ||
                other.vaultHasEntries == vaultHasEntries) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.keepBackingUp, keepBackingUp) ||
                other.keepBackingUp == keepBackingUp) &&
            (identical(other.restoredCount, restoredCount) ||
                other.restoredCount == restoredCount) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      step,
      isBusy,
      account,
      const DeepCollectionEquality().hash(backups),
      selected,
      key,
      payload,
      vaultHasEntries,
      mode,
      keepBackingUp,
      restoredCount,
      failure);

  @override
  String toString() {
    return 'RestoreState(step: $step, isBusy: $isBusy, account: $account, backups: $backups, selected: $selected, key: $key, payload: $payload, vaultHasEntries: $vaultHasEntries, mode: $mode, keepBackingUp: $keepBackingUp, restoredCount: $restoredCount, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $RestoreStateCopyWith<$Res> {
  factory $RestoreStateCopyWith(
          RestoreState value, $Res Function(RestoreState) _then) =
      _$RestoreStateCopyWithImpl;
  @useResult
  $Res call(
      {RestoreStep step,
      bool isBusy,
      String? account,
      List<RemoteBackup> backups,
      RemoteBackup? selected,
      RecoveryKey? key,
      BackupPayload? payload,
      bool vaultHasEntries,
      RestoreMode mode,
      bool keepBackingUp,
      int restoredCount,
      Option<BackupFailure> failure});

  $RemoteBackupCopyWith<$Res>? get selected;
  $RecoveryKeyCopyWith<$Res>? get key;
  $BackupPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$RestoreStateCopyWithImpl<$Res> implements $RestoreStateCopyWith<$Res> {
  _$RestoreStateCopyWithImpl(this._self, this._then);

  final RestoreState _self;
  final $Res Function(RestoreState) _then;

  /// Create a copy of RestoreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? isBusy = null,
    Object? account = freezed,
    Object? backups = null,
    Object? selected = freezed,
    Object? key = freezed,
    Object? payload = freezed,
    Object? vaultHasEntries = null,
    Object? mode = null,
    Object? keepBackingUp = null,
    Object? restoredCount = null,
    Object? failure = null,
  }) {
    return _then(_self.copyWith(
      step: null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as RestoreStep,
      isBusy: null == isBusy
          ? _self.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      account: freezed == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
      backups: null == backups
          ? _self.backups
          : backups // ignore: cast_nullable_to_non_nullable
              as List<RemoteBackup>,
      selected: freezed == selected
          ? _self.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as RemoteBackup?,
      key: freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as RecoveryKey?,
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as BackupPayload?,
      vaultHasEntries: null == vaultHasEntries
          ? _self.vaultHasEntries
          : vaultHasEntries // ignore: cast_nullable_to_non_nullable
              as bool,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as RestoreMode,
      keepBackingUp: null == keepBackingUp
          ? _self.keepBackingUp
          : keepBackingUp // ignore: cast_nullable_to_non_nullable
              as bool,
      restoredCount: null == restoredCount
          ? _self.restoredCount
          : restoredCount // ignore: cast_nullable_to_non_nullable
              as int,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<BackupFailure>,
    ));
  }

  /// Create a copy of RestoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemoteBackupCopyWith<$Res>? get selected {
    if (_self.selected == null) {
      return null;
    }

    return $RemoteBackupCopyWith<$Res>(_self.selected!, (value) {
      return _then(_self.copyWith(selected: value));
    });
  }

  /// Create a copy of RestoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecoveryKeyCopyWith<$Res>? get key {
    if (_self.key == null) {
      return null;
    }

    return $RecoveryKeyCopyWith<$Res>(_self.key!, (value) {
      return _then(_self.copyWith(key: value));
    });
  }

  /// Create a copy of RestoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackupPayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
      return null;
    }

    return $BackupPayloadCopyWith<$Res>(_self.payload!, (value) {
      return _then(_self.copyWith(payload: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RestoreState].
extension RestoreStatePatterns on RestoreState {
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
    TResult Function(_RestoreState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestoreState() when $default != null:
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
    TResult Function(_RestoreState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestoreState():
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
    TResult? Function(_RestoreState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestoreState() when $default != null:
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
            RestoreStep step,
            bool isBusy,
            String? account,
            List<RemoteBackup> backups,
            RemoteBackup? selected,
            RecoveryKey? key,
            BackupPayload? payload,
            bool vaultHasEntries,
            RestoreMode mode,
            bool keepBackingUp,
            int restoredCount,
            Option<BackupFailure> failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestoreState() when $default != null:
        return $default(
            _that.step,
            _that.isBusy,
            _that.account,
            _that.backups,
            _that.selected,
            _that.key,
            _that.payload,
            _that.vaultHasEntries,
            _that.mode,
            _that.keepBackingUp,
            _that.restoredCount,
            _that.failure);
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
            RestoreStep step,
            bool isBusy,
            String? account,
            List<RemoteBackup> backups,
            RemoteBackup? selected,
            RecoveryKey? key,
            BackupPayload? payload,
            bool vaultHasEntries,
            RestoreMode mode,
            bool keepBackingUp,
            int restoredCount,
            Option<BackupFailure> failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestoreState():
        return $default(
            _that.step,
            _that.isBusy,
            _that.account,
            _that.backups,
            _that.selected,
            _that.key,
            _that.payload,
            _that.vaultHasEntries,
            _that.mode,
            _that.keepBackingUp,
            _that.restoredCount,
            _that.failure);
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
            RestoreStep step,
            bool isBusy,
            String? account,
            List<RemoteBackup> backups,
            RemoteBackup? selected,
            RecoveryKey? key,
            BackupPayload? payload,
            bool vaultHasEntries,
            RestoreMode mode,
            bool keepBackingUp,
            int restoredCount,
            Option<BackupFailure> failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestoreState() when $default != null:
        return $default(
            _that.step,
            _that.isBusy,
            _that.account,
            _that.backups,
            _that.selected,
            _that.key,
            _that.payload,
            _that.vaultHasEntries,
            _that.mode,
            _that.keepBackingUp,
            _that.restoredCount,
            _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RestoreState implements RestoreState {
  const _RestoreState(
      {required this.step,
      required this.isBusy,
      this.account,
      required final List<RemoteBackup> backups,
      this.selected,
      this.key,
      this.payload,
      required this.vaultHasEntries,
      required this.mode,
      required this.keepBackingUp,
      required this.restoredCount,
      required this.failure})
      : _backups = backups;

  @override
  final RestoreStep step;
  @override
  final bool isBusy;
  @override
  final String? account;
  final List<RemoteBackup> _backups;
  @override
  List<RemoteBackup> get backups {
    if (_backups is EqualUnmodifiableListView) return _backups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backups);
  }

  @override
  final RemoteBackup? selected;
  @override
  final RecoveryKey? key;
  @override
  final BackupPayload? payload;

  /// Replace is only offered when there is something to replace.
  @override
  final bool vaultHasEntries;
  @override
  final RestoreMode mode;

  /// Turn on automatic backup with the same key and account afterwards.
  @override
  final bool keepBackingUp;

  /// Entries written by the finished restore.
  @override
  final int restoredCount;
  @override
  final Option<BackupFailure> failure;

  /// Create a copy of RestoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RestoreStateCopyWith<_RestoreState> get copyWith =>
      __$RestoreStateCopyWithImpl<_RestoreState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestoreState &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality().equals(other._backups, _backups) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.vaultHasEntries, vaultHasEntries) ||
                other.vaultHasEntries == vaultHasEntries) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.keepBackingUp, keepBackingUp) ||
                other.keepBackingUp == keepBackingUp) &&
            (identical(other.restoredCount, restoredCount) ||
                other.restoredCount == restoredCount) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      step,
      isBusy,
      account,
      const DeepCollectionEquality().hash(_backups),
      selected,
      key,
      payload,
      vaultHasEntries,
      mode,
      keepBackingUp,
      restoredCount,
      failure);

  @override
  String toString() {
    return 'RestoreState(step: $step, isBusy: $isBusy, account: $account, backups: $backups, selected: $selected, key: $key, payload: $payload, vaultHasEntries: $vaultHasEntries, mode: $mode, keepBackingUp: $keepBackingUp, restoredCount: $restoredCount, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$RestoreStateCopyWith<$Res>
    implements $RestoreStateCopyWith<$Res> {
  factory _$RestoreStateCopyWith(
          _RestoreState value, $Res Function(_RestoreState) _then) =
      __$RestoreStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RestoreStep step,
      bool isBusy,
      String? account,
      List<RemoteBackup> backups,
      RemoteBackup? selected,
      RecoveryKey? key,
      BackupPayload? payload,
      bool vaultHasEntries,
      RestoreMode mode,
      bool keepBackingUp,
      int restoredCount,
      Option<BackupFailure> failure});

  @override
  $RemoteBackupCopyWith<$Res>? get selected;
  @override
  $RecoveryKeyCopyWith<$Res>? get key;
  @override
  $BackupPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$RestoreStateCopyWithImpl<$Res>
    implements _$RestoreStateCopyWith<$Res> {
  __$RestoreStateCopyWithImpl(this._self, this._then);

  final _RestoreState _self;
  final $Res Function(_RestoreState) _then;

  /// Create a copy of RestoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? step = null,
    Object? isBusy = null,
    Object? account = freezed,
    Object? backups = null,
    Object? selected = freezed,
    Object? key = freezed,
    Object? payload = freezed,
    Object? vaultHasEntries = null,
    Object? mode = null,
    Object? keepBackingUp = null,
    Object? restoredCount = null,
    Object? failure = null,
  }) {
    return _then(_RestoreState(
      step: null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as RestoreStep,
      isBusy: null == isBusy
          ? _self.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      account: freezed == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
      backups: null == backups
          ? _self._backups
          : backups // ignore: cast_nullable_to_non_nullable
              as List<RemoteBackup>,
      selected: freezed == selected
          ? _self.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as RemoteBackup?,
      key: freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as RecoveryKey?,
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as BackupPayload?,
      vaultHasEntries: null == vaultHasEntries
          ? _self.vaultHasEntries
          : vaultHasEntries // ignore: cast_nullable_to_non_nullable
              as bool,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as RestoreMode,
      keepBackingUp: null == keepBackingUp
          ? _self.keepBackingUp
          : keepBackingUp // ignore: cast_nullable_to_non_nullable
              as bool,
      restoredCount: null == restoredCount
          ? _self.restoredCount
          : restoredCount // ignore: cast_nullable_to_non_nullable
              as int,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<BackupFailure>,
    ));
  }

  /// Create a copy of RestoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemoteBackupCopyWith<$Res>? get selected {
    if (_self.selected == null) {
      return null;
    }

    return $RemoteBackupCopyWith<$Res>(_self.selected!, (value) {
      return _then(_self.copyWith(selected: value));
    });
  }

  /// Create a copy of RestoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecoveryKeyCopyWith<$Res>? get key {
    if (_self.key == null) {
      return null;
    }

    return $RecoveryKeyCopyWith<$Res>(_self.key!, (value) {
      return _then(_self.copyWith(key: value));
    });
  }

  /// Create a copy of RestoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackupPayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
      return null;
    }

    return $BackupPayloadCopyWith<$Res>(_self.payload!, (value) {
      return _then(_self.copyWith(payload: value));
    });
  }
}

// dart format on
