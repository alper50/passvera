// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_backup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteBackup {
  String get id;
  DateTime get createdAt;
  int get sizeBytes;

  /// Create a copy of RemoteBackup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteBackupCopyWith<RemoteBackup> get copyWith =>
      _$RemoteBackupCopyWithImpl<RemoteBackup>(
          this as RemoteBackup, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteBackup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, sizeBytes);

  @override
  String toString() {
    return 'RemoteBackup(id: $id, createdAt: $createdAt, sizeBytes: $sizeBytes)';
  }
}

/// @nodoc
abstract mixin class $RemoteBackupCopyWith<$Res> {
  factory $RemoteBackupCopyWith(
          RemoteBackup value, $Res Function(RemoteBackup) _then) =
      _$RemoteBackupCopyWithImpl;
  @useResult
  $Res call({String id, DateTime createdAt, int sizeBytes});
}

/// @nodoc
class _$RemoteBackupCopyWithImpl<$Res> implements $RemoteBackupCopyWith<$Res> {
  _$RemoteBackupCopyWithImpl(this._self, this._then);

  final RemoteBackup _self;
  final $Res Function(RemoteBackup) _then;

  /// Create a copy of RemoteBackup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? sizeBytes = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sizeBytes: null == sizeBytes
          ? _self.sizeBytes
          : sizeBytes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [RemoteBackup].
extension RemoteBackupPatterns on RemoteBackup {
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
    TResult Function(_RemoteBackup value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RemoteBackup() when $default != null:
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
    TResult Function(_RemoteBackup value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RemoteBackup():
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
    TResult? Function(_RemoteBackup value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RemoteBackup() when $default != null:
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
    TResult Function(String id, DateTime createdAt, int sizeBytes)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RemoteBackup() when $default != null:
        return $default(_that.id, _that.createdAt, _that.sizeBytes);
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
    TResult Function(String id, DateTime createdAt, int sizeBytes) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RemoteBackup():
        return $default(_that.id, _that.createdAt, _that.sizeBytes);
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
    TResult? Function(String id, DateTime createdAt, int sizeBytes)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RemoteBackup() when $default != null:
        return $default(_that.id, _that.createdAt, _that.sizeBytes);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RemoteBackup implements RemoteBackup {
  const _RemoteBackup(
      {required this.id, required this.createdAt, required this.sizeBytes});

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final int sizeBytes;

  /// Create a copy of RemoteBackup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteBackupCopyWith<_RemoteBackup> get copyWith =>
      __$RemoteBackupCopyWithImpl<_RemoteBackup>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteBackup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, sizeBytes);

  @override
  String toString() {
    return 'RemoteBackup(id: $id, createdAt: $createdAt, sizeBytes: $sizeBytes)';
  }
}

/// @nodoc
abstract mixin class _$RemoteBackupCopyWith<$Res>
    implements $RemoteBackupCopyWith<$Res> {
  factory _$RemoteBackupCopyWith(
          _RemoteBackup value, $Res Function(_RemoteBackup) _then) =
      __$RemoteBackupCopyWithImpl;
  @override
  @useResult
  $Res call({String id, DateTime createdAt, int sizeBytes});
}

/// @nodoc
class __$RemoteBackupCopyWithImpl<$Res>
    implements _$RemoteBackupCopyWith<$Res> {
  __$RemoteBackupCopyWithImpl(this._self, this._then);

  final _RemoteBackup _self;
  final $Res Function(_RemoteBackup) _then;

  /// Create a copy of RemoteBackup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? sizeBytes = null,
  }) {
    return _then(_RemoteBackup(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sizeBytes: null == sizeBytes
          ? _self.sizeBytes
          : sizeBytes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
