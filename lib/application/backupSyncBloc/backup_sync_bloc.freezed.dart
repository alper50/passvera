// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_sync_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BackupSyncEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BackupSyncEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSyncEvent()';
  }
}

/// @nodoc
class $BackupSyncEventCopyWith<$Res> {
  $BackupSyncEventCopyWith(
      BackupSyncEvent _, $Res Function(BackupSyncEvent) __);
}

/// Adds pattern-matching-related methods to [BackupSyncEvent].
extension BackupSyncEventPatterns on BackupSyncEvent {
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
    TResult Function(_VaultChanged value)? vaultChanged,
    TResult Function(_AppResumed value)? appResumed,
    TResult Function(_SyncRequested value)? syncRequested,
    TResult Function(_StatusRefreshRequested value)? statusRefreshRequested,
    TResult Function(_UploadDue value)? uploadDue,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _VaultChanged() when vaultChanged != null:
        return vaultChanged(_that);
      case _AppResumed() when appResumed != null:
        return appResumed(_that);
      case _SyncRequested() when syncRequested != null:
        return syncRequested(_that);
      case _StatusRefreshRequested() when statusRefreshRequested != null:
        return statusRefreshRequested(_that);
      case _UploadDue() when uploadDue != null:
        return uploadDue(_that);
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
    required TResult Function(_VaultChanged value) vaultChanged,
    required TResult Function(_AppResumed value) appResumed,
    required TResult Function(_SyncRequested value) syncRequested,
    required TResult Function(_StatusRefreshRequested value)
        statusRefreshRequested,
    required TResult Function(_UploadDue value) uploadDue,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case _VaultChanged():
        return vaultChanged(_that);
      case _AppResumed():
        return appResumed(_that);
      case _SyncRequested():
        return syncRequested(_that);
      case _StatusRefreshRequested():
        return statusRefreshRequested(_that);
      case _UploadDue():
        return uploadDue(_that);
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
    TResult? Function(_VaultChanged value)? vaultChanged,
    TResult? Function(_AppResumed value)? appResumed,
    TResult? Function(_SyncRequested value)? syncRequested,
    TResult? Function(_StatusRefreshRequested value)? statusRefreshRequested,
    TResult? Function(_UploadDue value)? uploadDue,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _VaultChanged() when vaultChanged != null:
        return vaultChanged(_that);
      case _AppResumed() when appResumed != null:
        return appResumed(_that);
      case _SyncRequested() when syncRequested != null:
        return syncRequested(_that);
      case _StatusRefreshRequested() when statusRefreshRequested != null:
        return statusRefreshRequested(_that);
      case _UploadDue() when uploadDue != null:
        return uploadDue(_that);
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
    TResult Function()? vaultChanged,
    TResult Function()? appResumed,
    TResult Function()? syncRequested,
    TResult Function()? statusRefreshRequested,
    TResult Function()? uploadDue,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _VaultChanged() when vaultChanged != null:
        return vaultChanged();
      case _AppResumed() when appResumed != null:
        return appResumed();
      case _SyncRequested() when syncRequested != null:
        return syncRequested();
      case _StatusRefreshRequested() when statusRefreshRequested != null:
        return statusRefreshRequested();
      case _UploadDue() when uploadDue != null:
        return uploadDue();
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
    required TResult Function() vaultChanged,
    required TResult Function() appResumed,
    required TResult Function() syncRequested,
    required TResult Function() statusRefreshRequested,
    required TResult Function() uploadDue,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case _VaultChanged():
        return vaultChanged();
      case _AppResumed():
        return appResumed();
      case _SyncRequested():
        return syncRequested();
      case _StatusRefreshRequested():
        return statusRefreshRequested();
      case _UploadDue():
        return uploadDue();
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
    TResult? Function()? vaultChanged,
    TResult? Function()? appResumed,
    TResult? Function()? syncRequested,
    TResult? Function()? statusRefreshRequested,
    TResult? Function()? uploadDue,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _VaultChanged() when vaultChanged != null:
        return vaultChanged();
      case _AppResumed() when appResumed != null:
        return appResumed();
      case _SyncRequested() when syncRequested != null:
        return syncRequested();
      case _StatusRefreshRequested() when statusRefreshRequested != null:
        return statusRefreshRequested();
      case _UploadDue() when uploadDue != null:
        return uploadDue();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements BackupSyncEvent {
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
    return 'BackupSyncEvent.started()';
  }
}

/// @nodoc

class _VaultChanged implements BackupSyncEvent {
  const _VaultChanged();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _VaultChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSyncEvent.vaultChanged()';
  }
}

/// @nodoc

class _AppResumed implements BackupSyncEvent {
  const _AppResumed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppResumed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSyncEvent.appResumed()';
  }
}

/// @nodoc

class _SyncRequested implements BackupSyncEvent {
  const _SyncRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SyncRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSyncEvent.syncRequested()';
  }
}

/// @nodoc

class _StatusRefreshRequested implements BackupSyncEvent {
  const _StatusRefreshRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _StatusRefreshRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSyncEvent.statusRefreshRequested()';
  }
}

/// @nodoc

class _UploadDue implements BackupSyncEvent {
  const _UploadDue();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UploadDue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupSyncEvent.uploadDue()';
  }
}

/// @nodoc
mixin _$BackupSyncState {
  /// Null until loaded.
  BackupStatus? get status;
  bool get isUploading;

  /// Failure of the latest upload attempt; none after a success.
  Option<BackupFailure> get lastFailure;

  /// Create a copy of BackupSyncState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupSyncStateCopyWith<BackupSyncState> get copyWith =>
      _$BackupSyncStateCopyWithImpl<BackupSyncState>(
          this as BackupSyncState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupSyncState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isUploading, isUploading) ||
                other.isUploading == isUploading) &&
            (identical(other.lastFailure, lastFailure) ||
                other.lastFailure == lastFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, isUploading, lastFailure);

  @override
  String toString() {
    return 'BackupSyncState(status: $status, isUploading: $isUploading, lastFailure: $lastFailure)';
  }
}

/// @nodoc
abstract mixin class $BackupSyncStateCopyWith<$Res> {
  factory $BackupSyncStateCopyWith(
          BackupSyncState value, $Res Function(BackupSyncState) _then) =
      _$BackupSyncStateCopyWithImpl;
  @useResult
  $Res call(
      {BackupStatus? status,
      bool isUploading,
      Option<BackupFailure> lastFailure});

  $BackupStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$BackupSyncStateCopyWithImpl<$Res>
    implements $BackupSyncStateCopyWith<$Res> {
  _$BackupSyncStateCopyWithImpl(this._self, this._then);

  final BackupSyncState _self;
  final $Res Function(BackupSyncState) _then;

  /// Create a copy of BackupSyncState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? isUploading = null,
    Object? lastFailure = null,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BackupStatus?,
      isUploading: null == isUploading
          ? _self.isUploading
          : isUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      lastFailure: null == lastFailure
          ? _self.lastFailure
          : lastFailure // ignore: cast_nullable_to_non_nullable
              as Option<BackupFailure>,
    ));
  }

  /// Create a copy of BackupSyncState
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
}

/// Adds pattern-matching-related methods to [BackupSyncState].
extension BackupSyncStatePatterns on BackupSyncState {
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
    TResult Function(_BackupSyncState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BackupSyncState() when $default != null:
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
    TResult Function(_BackupSyncState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupSyncState():
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
    TResult? Function(_BackupSyncState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupSyncState() when $default != null:
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
    TResult Function(BackupStatus? status, bool isUploading,
            Option<BackupFailure> lastFailure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BackupSyncState() when $default != null:
        return $default(_that.status, _that.isUploading, _that.lastFailure);
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
    TResult Function(BackupStatus? status, bool isUploading,
            Option<BackupFailure> lastFailure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupSyncState():
        return $default(_that.status, _that.isUploading, _that.lastFailure);
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
    TResult? Function(BackupStatus? status, bool isUploading,
            Option<BackupFailure> lastFailure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupSyncState() when $default != null:
        return $default(_that.status, _that.isUploading, _that.lastFailure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BackupSyncState extends BackupSyncState {
  const _BackupSyncState(
      {this.status, required this.isUploading, required this.lastFailure})
      : super._();

  /// Null until loaded.
  @override
  final BackupStatus? status;
  @override
  final bool isUploading;

  /// Failure of the latest upload attempt; none after a success.
  @override
  final Option<BackupFailure> lastFailure;

  /// Create a copy of BackupSyncState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BackupSyncStateCopyWith<_BackupSyncState> get copyWith =>
      __$BackupSyncStateCopyWithImpl<_BackupSyncState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BackupSyncState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isUploading, isUploading) ||
                other.isUploading == isUploading) &&
            (identical(other.lastFailure, lastFailure) ||
                other.lastFailure == lastFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, isUploading, lastFailure);

  @override
  String toString() {
    return 'BackupSyncState(status: $status, isUploading: $isUploading, lastFailure: $lastFailure)';
  }
}

/// @nodoc
abstract mixin class _$BackupSyncStateCopyWith<$Res>
    implements $BackupSyncStateCopyWith<$Res> {
  factory _$BackupSyncStateCopyWith(
          _BackupSyncState value, $Res Function(_BackupSyncState) _then) =
      __$BackupSyncStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {BackupStatus? status,
      bool isUploading,
      Option<BackupFailure> lastFailure});

  @override
  $BackupStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$BackupSyncStateCopyWithImpl<$Res>
    implements _$BackupSyncStateCopyWith<$Res> {
  __$BackupSyncStateCopyWithImpl(this._self, this._then);

  final _BackupSyncState _self;
  final $Res Function(_BackupSyncState) _then;

  /// Create a copy of BackupSyncState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? isUploading = null,
    Object? lastFailure = null,
  }) {
    return _then(_BackupSyncState(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BackupStatus?,
      isUploading: null == isUploading
          ? _self.isUploading
          : isUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      lastFailure: null == lastFailure
          ? _self.lastFailure
          : lastFailure // ignore: cast_nullable_to_non_nullable
              as Option<BackupFailure>,
    ));
  }

  /// Create a copy of BackupSyncState
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
}

// dart format on
