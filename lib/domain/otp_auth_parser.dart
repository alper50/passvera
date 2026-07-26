import 'package:dartz/dartz.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';

/// Parses `otpauth://totp/...` QR payloads into [AuthenticatorEntry] drafts.
class OtpAuthParser {
  OtpAuthParser._();

  static const String storagePrefix = 'totp:';

  /// Returns an entry whose [AuthenticatorEntry.id] is already the storage key.
  static Either<AuthenticatorFailure, AuthenticatorEntry> parse(String rawUri) {
    final trimmed = rawUri.trim();
    if (trimmed.isEmpty) {
      return const Left(AuthenticatorFailure.invalidQr());
    }

    final uri = Uri.tryParse(trimmed);
    if (uri == null || uri.scheme.toLowerCase() != 'otpauth') {
      return const Left(AuthenticatorFailure.invalidQr());
    }

    final type = uri.host.toLowerCase();
    if (type == 'hotp') {
      return const Left(AuthenticatorFailure.unsupportedType());
    }
    if (type != 'totp') {
      return const Left(AuthenticatorFailure.invalidQr());
    }

    final params = uri.queryParameters;
    final secret = (params['secret'] ?? '').replaceAll(' ', '').trim();
    if (secret.isEmpty) {
      return const Left(AuthenticatorFailure.emptySecret());
    }

    final labelPath = uri.path.startsWith('/') ? uri.path.substring(1) : uri.path;
    final label = Uri.decodeComponent(labelPath);
    String issuer = (params['issuer'] ?? '').trim();
    String account = label;

    if (label.contains(':')) {
      final parts = label.split(':');
      final labelIssuer = parts.first.trim();
      account = parts.sublist(1).join(':').trim();
      if (issuer.isEmpty) {
        issuer = labelIssuer;
      }
    }

    final digits = int.tryParse(params['digits'] ?? '') ?? 6;
    final period = int.tryParse(params['period'] ?? '') ?? 30;
    if (digits < 6 || digits > 8 || period <= 0) {
      return const Left(AuthenticatorFailure.invalidQr());
    }

    final algorithm = TotpAlgorithm.fromString(params['algorithm']);
    final id = buildStorageId(issuer: issuer, account: account);

    return Right(
      AuthenticatorEntry(
        id: id,
        issuer: issuer,
        account: account,
        secret: secret.toUpperCase().replaceAll(' ', ''),
        digits: digits,
        period: period,
        algorithm: algorithm,
      ),
    );
  }

  static String buildStorageId({
    required String issuer,
    required String account,
  }) {
    final raw =
        '${issuer.trim().toLowerCase()}|${account.trim().toLowerCase()}';
    return '$storagePrefix${Uri.encodeComponent(raw)}';
  }
}
