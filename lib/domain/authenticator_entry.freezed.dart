// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticator_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthenticatorEntry {
  /// Storage key including `totp:` prefix.
  String get id;
  String get issuer;
  String get account;
  String get secret;
  int get digits;
  int get period;
  TotpAlgorithm get algorithm;

  /// Create a copy of AuthenticatorEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthenticatorEntryCopyWith<AuthenticatorEntry> get copyWith =>
      _$AuthenticatorEntryCopyWithImpl<AuthenticatorEntry>(
          this as AuthenticatorEntry, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticatorEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.digits, digits) || other.digits == digits) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, issuer, account, secret, digits, period, algorithm);

  @override
  String toString() {
    return 'AuthenticatorEntry(id: $id, issuer: $issuer, account: $account, secret: $secret, digits: $digits, period: $period, algorithm: $algorithm)';
  }
}

/// @nodoc
abstract mixin class $AuthenticatorEntryCopyWith<$Res> {
  factory $AuthenticatorEntryCopyWith(
          AuthenticatorEntry value, $Res Function(AuthenticatorEntry) _then) =
      _$AuthenticatorEntryCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String issuer,
      String account,
      String secret,
      int digits,
      int period,
      TotpAlgorithm algorithm});
}

/// @nodoc
class _$AuthenticatorEntryCopyWithImpl<$Res>
    implements $AuthenticatorEntryCopyWith<$Res> {
  _$AuthenticatorEntryCopyWithImpl(this._self, this._then);

  final AuthenticatorEntry _self;
  final $Res Function(AuthenticatorEntry) _then;

  /// Create a copy of AuthenticatorEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? issuer = null,
    Object? account = null,
    Object? secret = null,
    Object? digits = null,
    Object? period = null,
    Object? algorithm = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: null == issuer
          ? _self.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _self.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _self.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _self.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      algorithm: null == algorithm
          ? _self.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as TotpAlgorithm,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthenticatorEntry].
extension AuthenticatorEntryPatterns on AuthenticatorEntry {
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
    TResult Function(_AuthenticatorEntry value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorEntry() when $default != null:
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
    TResult Function(_AuthenticatorEntry value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorEntry():
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
    TResult? Function(_AuthenticatorEntry value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorEntry() when $default != null:
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
    TResult Function(String id, String issuer, String account, String secret,
            int digits, int period, TotpAlgorithm algorithm)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorEntry() when $default != null:
        return $default(_that.id, _that.issuer, _that.account, _that.secret,
            _that.digits, _that.period, _that.algorithm);
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
    TResult Function(String id, String issuer, String account, String secret,
            int digits, int period, TotpAlgorithm algorithm)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorEntry():
        return $default(_that.id, _that.issuer, _that.account, _that.secret,
            _that.digits, _that.period, _that.algorithm);
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
    TResult? Function(String id, String issuer, String account, String secret,
            int digits, int period, TotpAlgorithm algorithm)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthenticatorEntry() when $default != null:
        return $default(_that.id, _that.issuer, _that.account, _that.secret,
            _that.digits, _that.period, _that.algorithm);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AuthenticatorEntry extends AuthenticatorEntry {
  const _AuthenticatorEntry(
      {required this.id,
      required this.issuer,
      required this.account,
      required this.secret,
      this.digits = 6,
      this.period = 30,
      this.algorithm = TotpAlgorithm.sha1})
      : super._();

  /// Storage key including `totp:` prefix.
  @override
  final String id;
  @override
  final String issuer;
  @override
  final String account;
  @override
  final String secret;
  @override
  @JsonKey()
  final int digits;
  @override
  @JsonKey()
  final int period;
  @override
  @JsonKey()
  final TotpAlgorithm algorithm;

  /// Create a copy of AuthenticatorEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthenticatorEntryCopyWith<_AuthenticatorEntry> get copyWith =>
      __$AuthenticatorEntryCopyWithImpl<_AuthenticatorEntry>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticatorEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.digits, digits) || other.digits == digits) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, issuer, account, secret, digits, period, algorithm);

  @override
  String toString() {
    return 'AuthenticatorEntry(id: $id, issuer: $issuer, account: $account, secret: $secret, digits: $digits, period: $period, algorithm: $algorithm)';
  }
}

/// @nodoc
abstract mixin class _$AuthenticatorEntryCopyWith<$Res>
    implements $AuthenticatorEntryCopyWith<$Res> {
  factory _$AuthenticatorEntryCopyWith(
          _AuthenticatorEntry value, $Res Function(_AuthenticatorEntry) _then) =
      __$AuthenticatorEntryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String issuer,
      String account,
      String secret,
      int digits,
      int period,
      TotpAlgorithm algorithm});
}

/// @nodoc
class __$AuthenticatorEntryCopyWithImpl<$Res>
    implements _$AuthenticatorEntryCopyWith<$Res> {
  __$AuthenticatorEntryCopyWithImpl(this._self, this._then);

  final _AuthenticatorEntry _self;
  final $Res Function(_AuthenticatorEntry) _then;

  /// Create a copy of AuthenticatorEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? issuer = null,
    Object? account = null,
    Object? secret = null,
    Object? digits = null,
    Object? period = null,
    Object? algorithm = null,
  }) {
    return _then(_AuthenticatorEntry(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: null == issuer
          ? _self.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _self.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _self.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _self.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      algorithm: null == algorithm
          ? _self.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as TotpAlgorithm,
    ));
  }
}

// dart format on
