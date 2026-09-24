// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_migration_batch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtpMigrationBatch {
  /// Importable TOTP accounts, ids already in storage-key form.
  List<AuthenticatorEntry> get entries;

  /// Accounts left out: counter-based (HOTP), MD5, or missing a secret.
  int get skippedCount;
  int get batchIndex;
  int get batchSize;
  int get batchId;

  /// Create a copy of OtpMigrationBatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OtpMigrationBatchCopyWith<OtpMigrationBatch> get copyWith =>
      _$OtpMigrationBatchCopyWithImpl<OtpMigrationBatch>(
          this as OtpMigrationBatch, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OtpMigrationBatch &&
            const DeepCollectionEquality().equals(other.entries, entries) &&
            (identical(other.skippedCount, skippedCount) ||
                other.skippedCount == skippedCount) &&
            (identical(other.batchIndex, batchIndex) ||
                other.batchIndex == batchIndex) &&
            (identical(other.batchSize, batchSize) ||
                other.batchSize == batchSize) &&
            (identical(other.batchId, batchId) || other.batchId == batchId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(entries),
      skippedCount,
      batchIndex,
      batchSize,
      batchId);

  @override
  String toString() {
    return 'OtpMigrationBatch(entries: $entries, skippedCount: $skippedCount, batchIndex: $batchIndex, batchSize: $batchSize, batchId: $batchId)';
  }
}

/// @nodoc
abstract mixin class $OtpMigrationBatchCopyWith<$Res> {
  factory $OtpMigrationBatchCopyWith(
          OtpMigrationBatch value, $Res Function(OtpMigrationBatch) _then) =
      _$OtpMigrationBatchCopyWithImpl;
  @useResult
  $Res call(
      {List<AuthenticatorEntry> entries,
      int skippedCount,
      int batchIndex,
      int batchSize,
      int batchId});
}

/// @nodoc
class _$OtpMigrationBatchCopyWithImpl<$Res>
    implements $OtpMigrationBatchCopyWith<$Res> {
  _$OtpMigrationBatchCopyWithImpl(this._self, this._then);

  final OtpMigrationBatch _self;
  final $Res Function(OtpMigrationBatch) _then;

  /// Create a copy of OtpMigrationBatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
    Object? skippedCount = null,
    Object? batchIndex = null,
    Object? batchSize = null,
    Object? batchId = null,
  }) {
    return _then(_self.copyWith(
      entries: null == entries
          ? _self.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
      skippedCount: null == skippedCount
          ? _self.skippedCount
          : skippedCount // ignore: cast_nullable_to_non_nullable
              as int,
      batchIndex: null == batchIndex
          ? _self.batchIndex
          : batchIndex // ignore: cast_nullable_to_non_nullable
              as int,
      batchSize: null == batchSize
          ? _self.batchSize
          : batchSize // ignore: cast_nullable_to_non_nullable
              as int,
      batchId: null == batchId
          ? _self.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [OtpMigrationBatch].
extension OtpMigrationBatchPatterns on OtpMigrationBatch {
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
    TResult Function(_OtpMigrationBatch value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OtpMigrationBatch() when $default != null:
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
    TResult Function(_OtpMigrationBatch value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpMigrationBatch():
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
    TResult? Function(_OtpMigrationBatch value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpMigrationBatch() when $default != null:
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
    TResult Function(List<AuthenticatorEntry> entries, int skippedCount,
            int batchIndex, int batchSize, int batchId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OtpMigrationBatch() when $default != null:
        return $default(_that.entries, _that.skippedCount, _that.batchIndex,
            _that.batchSize, _that.batchId);
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
    TResult Function(List<AuthenticatorEntry> entries, int skippedCount,
            int batchIndex, int batchSize, int batchId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpMigrationBatch():
        return $default(_that.entries, _that.skippedCount, _that.batchIndex,
            _that.batchSize, _that.batchId);
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
    TResult? Function(List<AuthenticatorEntry> entries, int skippedCount,
            int batchIndex, int batchSize, int batchId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpMigrationBatch() when $default != null:
        return $default(_that.entries, _that.skippedCount, _that.batchIndex,
            _that.batchSize, _that.batchId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _OtpMigrationBatch implements OtpMigrationBatch {
  const _OtpMigrationBatch(
      {required final List<AuthenticatorEntry> entries,
      required this.skippedCount,
      required this.batchIndex,
      required this.batchSize,
      required this.batchId})
      : _entries = entries;

  /// Importable TOTP accounts, ids already in storage-key form.
  final List<AuthenticatorEntry> _entries;

  /// Importable TOTP accounts, ids already in storage-key form.
  @override
  List<AuthenticatorEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  /// Accounts left out: counter-based (HOTP), MD5, or missing a secret.
  @override
  final int skippedCount;
  @override
  final int batchIndex;
  @override
  final int batchSize;
  @override
  final int batchId;

  /// Create a copy of OtpMigrationBatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OtpMigrationBatchCopyWith<_OtpMigrationBatch> get copyWith =>
      __$OtpMigrationBatchCopyWithImpl<_OtpMigrationBatch>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtpMigrationBatch &&
            const DeepCollectionEquality().equals(other._entries, _entries) &&
            (identical(other.skippedCount, skippedCount) ||
                other.skippedCount == skippedCount) &&
            (identical(other.batchIndex, batchIndex) ||
                other.batchIndex == batchIndex) &&
            (identical(other.batchSize, batchSize) ||
                other.batchSize == batchSize) &&
            (identical(other.batchId, batchId) || other.batchId == batchId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_entries),
      skippedCount,
      batchIndex,
      batchSize,
      batchId);

  @override
  String toString() {
    return 'OtpMigrationBatch(entries: $entries, skippedCount: $skippedCount, batchIndex: $batchIndex, batchSize: $batchSize, batchId: $batchId)';
  }
}

/// @nodoc
abstract mixin class _$OtpMigrationBatchCopyWith<$Res>
    implements $OtpMigrationBatchCopyWith<$Res> {
  factory _$OtpMigrationBatchCopyWith(
          _OtpMigrationBatch value, $Res Function(_OtpMigrationBatch) _then) =
      __$OtpMigrationBatchCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<AuthenticatorEntry> entries,
      int skippedCount,
      int batchIndex,
      int batchSize,
      int batchId});
}

/// @nodoc
class __$OtpMigrationBatchCopyWithImpl<$Res>
    implements _$OtpMigrationBatchCopyWith<$Res> {
  __$OtpMigrationBatchCopyWithImpl(this._self, this._then);

  final _OtpMigrationBatch _self;
  final $Res Function(_OtpMigrationBatch) _then;

  /// Create a copy of OtpMigrationBatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? entries = null,
    Object? skippedCount = null,
    Object? batchIndex = null,
    Object? batchSize = null,
    Object? batchId = null,
  }) {
    return _then(_OtpMigrationBatch(
      entries: null == entries
          ? _self._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
      skippedCount: null == skippedCount
          ? _self.skippedCount
          : skippedCount // ignore: cast_nullable_to_non_nullable
              as int,
      batchIndex: null == batchIndex
          ? _self.batchIndex
          : batchIndex // ignore: cast_nullable_to_non_nullable
              as int,
      batchSize: null == batchSize
          ? _self.batchSize
          : batchSize // ignore: cast_nullable_to_non_nullable
              as int,
      batchId: null == batchId
          ? _self.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
