import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticator_entry.freezed.dart';

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

@freezed
class AuthenticatorEntry with _$AuthenticatorEntry {
  const AuthenticatorEntry._();

  const factory AuthenticatorEntry({
    /// Storage key including `totp:` prefix.
    required String id,
    required String issuer,
    required String account,
    required String secret,
    @Default(6) int digits,
    @Default(30) int period,
    @Default(TotpAlgorithm.sha1) TotpAlgorithm algorithm,
  }) = _AuthenticatorEntry;

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
}
