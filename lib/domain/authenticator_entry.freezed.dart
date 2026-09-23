// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticator_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticatorEntry {
  /// Storage key including `totp:` prefix.
  String get id => throw _privateConstructorUsedError;
  String get issuer => throw _privateConstructorUsedError;
  String get account => throw _privateConstructorUsedError;
  String get secret => throw _privateConstructorUsedError;
  int get digits => throw _privateConstructorUsedError;
  int get period => throw _privateConstructorUsedError;
  TotpAlgorithm get algorithm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticatorEntryCopyWith<AuthenticatorEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatorEntryCopyWith<$Res> {
  factory $AuthenticatorEntryCopyWith(
          AuthenticatorEntry value, $Res Function(AuthenticatorEntry) then) =
      _$AuthenticatorEntryCopyWithImpl<$Res, AuthenticatorEntry>;
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
class _$AuthenticatorEntryCopyWithImpl<$Res, $Val extends AuthenticatorEntry>
    implements $AuthenticatorEntryCopyWith<$Res> {
  _$AuthenticatorEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      algorithm: null == algorithm
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as TotpAlgorithm,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticatorEntryCopyWith<$Res>
    implements $AuthenticatorEntryCopyWith<$Res> {
  factory _$$_AuthenticatorEntryCopyWith(_$_AuthenticatorEntry value,
          $Res Function(_$_AuthenticatorEntry) then) =
      __$$_AuthenticatorEntryCopyWithImpl<$Res>;
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
class __$$_AuthenticatorEntryCopyWithImpl<$Res>
    extends _$AuthenticatorEntryCopyWithImpl<$Res, _$_AuthenticatorEntry>
    implements _$$_AuthenticatorEntryCopyWith<$Res> {
  __$$_AuthenticatorEntryCopyWithImpl(
      _$_AuthenticatorEntry _value, $Res Function(_$_AuthenticatorEntry) _then)
      : super(_value, _then);

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
    return _then(_$_AuthenticatorEntry(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      algorithm: null == algorithm
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as TotpAlgorithm,
    ));
  }
}

/// @nodoc

class _$_AuthenticatorEntry extends _AuthenticatorEntry {
  const _$_AuthenticatorEntry(
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

  @override
  String toString() {
    return 'AuthenticatorEntry(id: $id, issuer: $issuer, account: $account, secret: $secret, digits: $digits, period: $period, algorithm: $algorithm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatorEntry &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatorEntryCopyWith<_$_AuthenticatorEntry> get copyWith =>
      __$$_AuthenticatorEntryCopyWithImpl<_$_AuthenticatorEntry>(
          this, _$identity);
}

abstract class _AuthenticatorEntry extends AuthenticatorEntry {
  const factory _AuthenticatorEntry(
      {required final String id,
      required final String issuer,
      required final String account,
      required final String secret,
      final int digits,
      final int period,
      final TotpAlgorithm algorithm}) = _$_AuthenticatorEntry;
  const _AuthenticatorEntry._() : super._();

  @override

  /// Storage key including `totp:` prefix.
  String get id;
  @override
  String get issuer;
  @override
  String get account;
  @override
  String get secret;
  @override
  int get digits;
  @override
  int get period;
  @override
  TotpAlgorithm get algorithm;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatorEntryCopyWith<_$_AuthenticatorEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
