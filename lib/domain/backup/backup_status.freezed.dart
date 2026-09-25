// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BackupStatus {
  /// False when the build has no Google OAuth client configured.
  bool get isConfigured;
  bool get isEnabled;

  /// Google account the backups go to (for display).
  String? get accountEmail;
  DateTime? get lastSuccessAt;

  /// Vault changed since the last successful upload.
  bool get hasPendingChanges;

  /// Create a copy of BackupStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupStatusCopyWith<BackupStatus> get copyWith =>
      _$BackupStatusCopyWithImpl<BackupStatus>(
          this as BackupStatus, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupStatus &&
            (identical(other.isConfigured, isConfigured) ||
                other.isConfigured == isConfigured) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.accountEmail, accountEmail) ||
                other.accountEmail == accountEmail) &&
            (identical(other.lastSuccessAt, lastSuccessAt) ||
                other.lastSuccessAt == lastSuccessAt) &&
            (identical(other.hasPendingChanges, hasPendingChanges) ||
                other.hasPendingChanges == hasPendingChanges));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConfigured, isEnabled,
      accountEmail, lastSuccessAt, hasPendingChanges);

  @override
  String toString() {
    return 'BackupStatus(isConfigured: $isConfigured, isEnabled: $isEnabled, accountEmail: $accountEmail, lastSuccessAt: $lastSuccessAt, hasPendingChanges: $hasPendingChanges)';
  }
}

/// @nodoc
abstract mixin class $BackupStatusCopyWith<$Res> {
  factory $BackupStatusCopyWith(
          BackupStatus value, $Res Function(BackupStatus) _then) =
      _$BackupStatusCopyWithImpl;
  @useResult
  $Res call(
      {bool isConfigured,
      bool isEnabled,
      String? accountEmail,
      DateTime? lastSuccessAt,
      bool hasPendingChanges});
}

/// @nodoc
class _$BackupStatusCopyWithImpl<$Res> implements $BackupStatusCopyWith<$Res> {
  _$BackupStatusCopyWithImpl(this._self, this._then);

  final BackupStatus _self;
  final $Res Function(BackupStatus) _then;

  /// Create a copy of BackupStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConfigured = null,
    Object? isEnabled = null,
    Object? accountEmail = freezed,
    Object? lastSuccessAt = freezed,
    Object? hasPendingChanges = null,
  }) {
    return _then(_self.copyWith(
      isConfigured: null == isConfigured
          ? _self.isConfigured
          : isConfigured // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabled: null == isEnabled
          ? _self.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      accountEmail: freezed == accountEmail
          ? _self.accountEmail
          : accountEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSuccessAt: freezed == lastSuccessAt
          ? _self.lastSuccessAt
          : lastSuccessAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hasPendingChanges: null == hasPendingChanges
          ? _self.hasPendingChanges
          : hasPendingChanges // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [BackupStatus].
extension BackupStatusPatterns on BackupStatus {
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
    TResult Function(_BackupStatus value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BackupStatus() when $default != null:
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
    TResult Function(_BackupStatus value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupStatus():
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
    TResult? Function(_BackupStatus value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupStatus() when $default != null:
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
    TResult Function(bool isConfigured, bool isEnabled, String? accountEmail,
            DateTime? lastSuccessAt, bool hasPendingChanges)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BackupStatus() when $default != null:
        return $default(_that.isConfigured, _that.isEnabled, _that.accountEmail,
            _that.lastSuccessAt, _that.hasPendingChanges);
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
    TResult Function(bool isConfigured, bool isEnabled, String? accountEmail,
            DateTime? lastSuccessAt, bool hasPendingChanges)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupStatus():
        return $default(_that.isConfigured, _that.isEnabled, _that.accountEmail,
            _that.lastSuccessAt, _that.hasPendingChanges);
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
    TResult? Function(bool isConfigured, bool isEnabled, String? accountEmail,
            DateTime? lastSuccessAt, bool hasPendingChanges)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupStatus() when $default != null:
        return $default(_that.isConfigured, _that.isEnabled, _that.accountEmail,
            _that.lastSuccessAt, _that.hasPendingChanges);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BackupStatus implements BackupStatus {
  const _BackupStatus(
      {required this.isConfigured,
      required this.isEnabled,
      this.accountEmail,
      this.lastSuccessAt,
      required this.hasPendingChanges});

  /// False when the build has no Google OAuth client configured.
  @override
  final bool isConfigured;
  @override
  final bool isEnabled;

  /// Google account the backups go to (for display).
  @override
  final String? accountEmail;
  @override
  final DateTime? lastSuccessAt;

  /// Vault changed since the last successful upload.
  @override
  final bool hasPendingChanges;

  /// Create a copy of BackupStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BackupStatusCopyWith<_BackupStatus> get copyWith =>
      __$BackupStatusCopyWithImpl<_BackupStatus>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BackupStatus &&
            (identical(other.isConfigured, isConfigured) ||
                other.isConfigured == isConfigured) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.accountEmail, accountEmail) ||
                other.accountEmail == accountEmail) &&
            (identical(other.lastSuccessAt, lastSuccessAt) ||
                other.lastSuccessAt == lastSuccessAt) &&
            (identical(other.hasPendingChanges, hasPendingChanges) ||
                other.hasPendingChanges == hasPendingChanges));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConfigured, isEnabled,
      accountEmail, lastSuccessAt, hasPendingChanges);

  @override
  String toString() {
    return 'BackupStatus(isConfigured: $isConfigured, isEnabled: $isEnabled, accountEmail: $accountEmail, lastSuccessAt: $lastSuccessAt, hasPendingChanges: $hasPendingChanges)';
  }
}

/// @nodoc
abstract mixin class _$BackupStatusCopyWith<$Res>
    implements $BackupStatusCopyWith<$Res> {
  factory _$BackupStatusCopyWith(
          _BackupStatus value, $Res Function(_BackupStatus) _then) =
      __$BackupStatusCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isConfigured,
      bool isEnabled,
      String? accountEmail,
      DateTime? lastSuccessAt,
      bool hasPendingChanges});
}

/// @nodoc
class __$BackupStatusCopyWithImpl<$Res>
    implements _$BackupStatusCopyWith<$Res> {
  __$BackupStatusCopyWithImpl(this._self, this._then);

  final _BackupStatus _self;
  final $Res Function(_BackupStatus) _then;

  /// Create a copy of BackupStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isConfigured = null,
    Object? isEnabled = null,
    Object? accountEmail = freezed,
    Object? lastSuccessAt = freezed,
    Object? hasPendingChanges = null,
  }) {
    return _then(_BackupStatus(
      isConfigured: null == isConfigured
          ? _self.isConfigured
          : isConfigured // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabled: null == isEnabled
          ? _self.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      accountEmail: freezed == accountEmail
          ? _self.accountEmail
          : accountEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSuccessAt: freezed == lastSuccessAt
          ? _self.lastSuccessAt
          : lastSuccessAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hasPendingChanges: null == hasPendingChanges
          ? _self.hasPendingChanges
          : hasPendingChanges // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
