// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_migration_batch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtpMigrationBatch {
  /// Importable TOTP accounts, ids already in storage-key form.
  List<AuthenticatorEntry> get entries => throw _privateConstructorUsedError;

  /// Accounts left out: counter-based (HOTP), MD5, or missing a secret.
  int get skippedCount => throw _privateConstructorUsedError;
  int get batchIndex => throw _privateConstructorUsedError;
  int get batchSize => throw _privateConstructorUsedError;
  int get batchId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpMigrationBatchCopyWith<OtpMigrationBatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpMigrationBatchCopyWith<$Res> {
  factory $OtpMigrationBatchCopyWith(
          OtpMigrationBatch value, $Res Function(OtpMigrationBatch) then) =
      _$OtpMigrationBatchCopyWithImpl<$Res, OtpMigrationBatch>;
  @useResult
  $Res call(
      {List<AuthenticatorEntry> entries,
      int skippedCount,
      int batchIndex,
      int batchSize,
      int batchId});
}

/// @nodoc
class _$OtpMigrationBatchCopyWithImpl<$Res, $Val extends OtpMigrationBatch>
    implements $OtpMigrationBatchCopyWith<$Res> {
  _$OtpMigrationBatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
    Object? skippedCount = null,
    Object? batchIndex = null,
    Object? batchSize = null,
    Object? batchId = null,
  }) {
    return _then(_value.copyWith(
      entries: null == entries
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
      skippedCount: null == skippedCount
          ? _value.skippedCount
          : skippedCount // ignore: cast_nullable_to_non_nullable
              as int,
      batchIndex: null == batchIndex
          ? _value.batchIndex
          : batchIndex // ignore: cast_nullable_to_non_nullable
              as int,
      batchSize: null == batchSize
          ? _value.batchSize
          : batchSize // ignore: cast_nullable_to_non_nullable
              as int,
      batchId: null == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OtpMigrationBatchCopyWith<$Res>
    implements $OtpMigrationBatchCopyWith<$Res> {
  factory _$$_OtpMigrationBatchCopyWith(_$_OtpMigrationBatch value,
          $Res Function(_$_OtpMigrationBatch) then) =
      __$$_OtpMigrationBatchCopyWithImpl<$Res>;
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
class __$$_OtpMigrationBatchCopyWithImpl<$Res>
    extends _$OtpMigrationBatchCopyWithImpl<$Res, _$_OtpMigrationBatch>
    implements _$$_OtpMigrationBatchCopyWith<$Res> {
  __$$_OtpMigrationBatchCopyWithImpl(
      _$_OtpMigrationBatch _value, $Res Function(_$_OtpMigrationBatch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
    Object? skippedCount = null,
    Object? batchIndex = null,
    Object? batchSize = null,
    Object? batchId = null,
  }) {
    return _then(_$_OtpMigrationBatch(
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
      skippedCount: null == skippedCount
          ? _value.skippedCount
          : skippedCount // ignore: cast_nullable_to_non_nullable
              as int,
      batchIndex: null == batchIndex
          ? _value.batchIndex
          : batchIndex // ignore: cast_nullable_to_non_nullable
              as int,
      batchSize: null == batchSize
          ? _value.batchSize
          : batchSize // ignore: cast_nullable_to_non_nullable
              as int,
      batchId: null == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OtpMigrationBatch implements _OtpMigrationBatch {
  const _$_OtpMigrationBatch(
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

  @override
  String toString() {
    return 'OtpMigrationBatch(entries: $entries, skippedCount: $skippedCount, batchIndex: $batchIndex, batchSize: $batchSize, batchId: $batchId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpMigrationBatch &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpMigrationBatchCopyWith<_$_OtpMigrationBatch> get copyWith =>
      __$$_OtpMigrationBatchCopyWithImpl<_$_OtpMigrationBatch>(
          this, _$identity);
}

abstract class _OtpMigrationBatch implements OtpMigrationBatch {
  const factory _OtpMigrationBatch(
      {required final List<AuthenticatorEntry> entries,
      required final int skippedCount,
      required final int batchIndex,
      required final int batchSize,
      required final int batchId}) = _$_OtpMigrationBatch;

  @override

  /// Importable TOTP accounts, ids already in storage-key form.
  List<AuthenticatorEntry> get entries;
  @override

  /// Accounts left out: counter-based (HOTP), MD5, or missing a secret.
  int get skippedCount;
  @override
  int get batchIndex;
  @override
  int get batchSize;
  @override
  int get batchId;
  @override
  @JsonKey(ignore: true)
  _$$_OtpMigrationBatchCopyWith<_$_OtpMigrationBatch> get copyWith =>
      throw _privateConstructorUsedError;
}
