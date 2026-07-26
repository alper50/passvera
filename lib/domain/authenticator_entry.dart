import 'dart:convert';

import 'package:flutter/foundation.dart';

/// Supported HMAC algorithms for TOTP (RFC 6238).
enum TotpAlgorithm {
  sha1,
  sha256,
  sha512;

  static TotpAlgorithm fromString(String? raw) {
    switch ((raw ?? 'sha1').toLowerCase().replaceAll('-', '')) {
      case 'sha256':
        return TotpAlgorithm.sha256;
      case 'sha512':
        return TotpAlgorithm.sha512;
      case 'sha1':
      default:
        return TotpAlgorithm.sha1;
    }
  }

  String get wireName {
    switch (this) {
      case TotpAlgorithm.sha1:
        return 'SHA1';
      case TotpAlgorithm.sha256:
        return 'SHA256';
      case TotpAlgorithm.sha512:
        return 'SHA512';
    }
  }
}

@immutable
class AuthenticatorEntry {
  const AuthenticatorEntry({
    required this.id,
    required this.issuer,
    required this.account,
    required this.secret,
    this.digits = 6,
    this.period = 30,
    this.algorithm = TotpAlgorithm.sha1,
  });

  /// Storage key including `totp:` prefix.
  final String id;
  final String issuer;
  final String account;
  final String secret;
  final int digits;
  final int period;
  final TotpAlgorithm algorithm;

  String get displayTitle {
    if (issuer.isNotEmpty) return issuer;
    if (account.isNotEmpty) return account;
    return 'Authenticator';
  }

  String get displaySubtitle {
    if (issuer.isNotEmpty && account.isNotEmpty) return account;
    return '';
  }

  String toStorageValue() {
    return jsonEncode({
      'issuer': issuer,
      'account': account,
      'secret': secret,
      'digits': digits,
      'period': period,
      'algorithm': algorithm.wireName,
    });
  }

  factory AuthenticatorEntry.fromStorage({
    required String id,
    required String raw,
  }) {
    final decoded = jsonDecode(raw) as Map<String, dynamic>;
    return AuthenticatorEntry(
      id: id,
      issuer: (decoded['issuer'] as String?)?.trim() ?? '',
      account: (decoded['account'] as String?)?.trim() ?? '',
      secret: (decoded['secret'] as String?)?.trim() ?? '',
      digits: (decoded['digits'] as num?)?.toInt() ?? 6,
      period: (decoded['period'] as num?)?.toInt() ?? 30,
      algorithm: TotpAlgorithm.fromString(decoded['algorithm'] as String?),
    );
  }

  AuthenticatorEntry copyWith({
    String? id,
    String? issuer,
    String? account,
    String? secret,
    int? digits,
    int? period,
    TotpAlgorithm? algorithm,
  }) {
    return AuthenticatorEntry(
      id: id ?? this.id,
      issuer: issuer ?? this.issuer,
      account: account ?? this.account,
      secret: secret ?? this.secret,
      digits: digits ?? this.digits,
      period: period ?? this.period,
      algorithm: algorithm ?? this.algorithm,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AuthenticatorEntry &&
            other.id == id &&
            other.issuer == issuer &&
            other.account == account &&
            other.secret == secret &&
            other.digits == digits &&
            other.period == period &&
            other.algorithm == algorithm);
  }

  @override
  int get hashCode =>
      Object.hash(id, issuer, account, secret, digits, period, algorithm);
}
