// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BackupPayload {
  DateTime get createdAt;
  List<ApplicationModel> get passwords;
  List<AuthenticatorEntry> get authenticators;

  /// Create a copy of BackupPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupPayloadCopyWith<BackupPayload> get copyWith =>
      _$BackupPayloadCopyWithImpl<BackupPayload>(
          this as BackupPayload, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupPayload &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.passwords, passwords) &&
            const DeepCollectionEquality()
                .equals(other.authenticators, authenticators));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      const DeepCollectionEquality().hash(passwords),
      const DeepCollectionEquality().hash(authenticators));

  @override
  String toString() {
    return 'BackupPayload(createdAt: $createdAt, passwords: $passwords, authenticators: $authenticators)';
  }
}

/// @nodoc
abstract mixin class $BackupPayloadCopyWith<$Res> {
  factory $BackupPayloadCopyWith(
          BackupPayload value, $Res Function(BackupPayload) _then) =
      _$BackupPayloadCopyWithImpl;
  @useResult
  $Res call(
      {DateTime createdAt,
      List<ApplicationModel> passwords,
      List<AuthenticatorEntry> authenticators});
}

/// @nodoc
class _$BackupPayloadCopyWithImpl<$Res>
    implements $BackupPayloadCopyWith<$Res> {
  _$BackupPayloadCopyWithImpl(this._self, this._then);

  final BackupPayload _self;
  final $Res Function(BackupPayload) _then;

  /// Create a copy of BackupPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? passwords = null,
    Object? authenticators = null,
  }) {
    return _then(_self.copyWith(
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      passwords: null == passwords
          ? _self.passwords
          : passwords // ignore: cast_nullable_to_non_nullable
              as List<ApplicationModel>,
      authenticators: null == authenticators
          ? _self.authenticators
          : authenticators // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
    ));
  }
}

/// Adds pattern-matching-related methods to [BackupPayload].
extension BackupPayloadPatterns on BackupPayload {
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
    TResult Function(_BackupPayload value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BackupPayload() when $default != null:
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
    TResult Function(_BackupPayload value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupPayload():
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
    TResult? Function(_BackupPayload value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupPayload() when $default != null:
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
    TResult Function(DateTime createdAt, List<ApplicationModel> passwords,
            List<AuthenticatorEntry> authenticators)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BackupPayload() when $default != null:
        return $default(_that.createdAt, _that.passwords, _that.authenticators);
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
    TResult Function(DateTime createdAt, List<ApplicationModel> passwords,
            List<AuthenticatorEntry> authenticators)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupPayload():
        return $default(_that.createdAt, _that.passwords, _that.authenticators);
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
    TResult? Function(DateTime createdAt, List<ApplicationModel> passwords,
            List<AuthenticatorEntry> authenticators)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BackupPayload() when $default != null:
        return $default(_that.createdAt, _that.passwords, _that.authenticators);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BackupPayload implements BackupPayload {
  const _BackupPayload(
      {required this.createdAt,
      required final List<ApplicationModel> passwords,
      required final List<AuthenticatorEntry> authenticators})
      : _passwords = passwords,
        _authenticators = authenticators;

  @override
  final DateTime createdAt;
  final List<ApplicationModel> _passwords;
  @override
  List<ApplicationModel> get passwords {
    if (_passwords is EqualUnmodifiableListView) return _passwords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_passwords);
  }

  final List<AuthenticatorEntry> _authenticators;
  @override
  List<AuthenticatorEntry> get authenticators {
    if (_authenticators is EqualUnmodifiableListView) return _authenticators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authenticators);
  }

  /// Create a copy of BackupPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BackupPayloadCopyWith<_BackupPayload> get copyWith =>
      __$BackupPayloadCopyWithImpl<_BackupPayload>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BackupPayload &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._passwords, _passwords) &&
            const DeepCollectionEquality()
                .equals(other._authenticators, _authenticators));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      const DeepCollectionEquality().hash(_passwords),
      const DeepCollectionEquality().hash(_authenticators));

  @override
  String toString() {
    return 'BackupPayload(createdAt: $createdAt, passwords: $passwords, authenticators: $authenticators)';
  }
}

/// @nodoc
abstract mixin class _$BackupPayloadCopyWith<$Res>
    implements $BackupPayloadCopyWith<$Res> {
  factory _$BackupPayloadCopyWith(
          _BackupPayload value, $Res Function(_BackupPayload) _then) =
      __$BackupPayloadCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTime createdAt,
      List<ApplicationModel> passwords,
      List<AuthenticatorEntry> authenticators});
}

/// @nodoc
class __$BackupPayloadCopyWithImpl<$Res>
    implements _$BackupPayloadCopyWith<$Res> {
  __$BackupPayloadCopyWithImpl(this._self, this._then);

  final _BackupPayload _self;
  final $Res Function(_BackupPayload) _then;

  /// Create a copy of BackupPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? createdAt = null,
    Object? passwords = null,
    Object? authenticators = null,
  }) {
    return _then(_BackupPayload(
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      passwords: null == passwords
          ? _self._passwords
          : passwords // ignore: cast_nullable_to_non_nullable
              as List<ApplicationModel>,
      authenticators: null == authenticators
          ? _self._authenticators
          : authenticators // ignore: cast_nullable_to_non_nullable
              as List<AuthenticatorEntry>,
    ));
  }
}

// dart format on
