import 'dart:convert';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/domain/otp_auth_parser.dart';
import 'package:passvera/domain/otp_migration_batch.dart';
import 'package:passvera/domain/totp_generator.dart';

/// Parses Google Authenticator export QR codes:
/// `otpauth-migration://offline?data=<base64 MigrationPayload protobuf>`.
///
/// ```proto
/// message MigrationPayload {
///   repeated OtpParameters otp_parameters = 1;
///   int32 version = 2; int32 batch_size = 3;
///   int32 batch_index = 4; int32 batch_id = 5;
/// }
/// message OtpParameters {
///   bytes secret = 1; string name = 2; string issuer = 3;
///   Algorithm algorithm = 4;  // 0 unspecified, 1 SHA1, 2 SHA256, 3 SHA512, 4 MD5
///   DigitCount digits = 5;    // 0 unspecified, 1 six, 2 eight
///   OtpType type = 6;         // 0 unspecified, 1 HOTP, 2 TOTP
///   int64 counter = 7;
/// }
/// ```
class OtpMigrationParser {
  OtpMigrationParser._();

  static const String scheme = 'otpauth-migration';

  static bool isMigrationUri(String raw) =>
      raw.trim().toLowerCase().startsWith('$scheme://');

  static Either<AuthenticatorFailure, OtpMigrationBatch> parse(String rawUri) {
    try {
      final payload = _extractPayload(rawUri.trim());
      if (payload == null) return const Left(AuthenticatorFailure.invalidQr());
      return Right(_decodePayload(payload));
    } on FormatException {
      return const Left(AuthenticatorFailure.invalidQr());
    }
  }

  /// Reads `data` from the raw query: `Uri.queryParameters` form-decodes
  /// `+` to a space, which would corrupt standard base64.
  static Uint8List? _extractPayload(String raw) {
    final uri = Uri.tryParse(raw);
    if (uri == null || uri.scheme.toLowerCase() != scheme) return null;
    for (final pair in uri.query.split('&')) {
      final separator = pair.indexOf('=');
      if (separator < 0 || pair.substring(0, separator) != 'data') continue;
      final value = Uri.decodeComponent(pair.substring(separator + 1));
      if (value.isEmpty) return null;
      return base64.decode(base64.normalize(value));
    }
    return null;
  }

  static OtpMigrationBatch _decodePayload(Uint8List bytes) {
    final entries = <AuthenticatorEntry>[];
    var skipped = 0;
    var batchSize = 1;
    var batchIndex = 0;
    var batchId = 0;

    final reader = _ProtoReader(bytes);
    while (!reader.isAtEnd) {
      final (field, wireType) = reader.readTag();
      switch ((field, wireType)) {
        case (1, 2):
          final entry = _decodeOtpParameters(reader.readBytes());
          entry == null ? skipped++ : entries.add(entry);
        case (3, 0):
          batchSize = reader.readVarint();
        case (4, 0):
          batchIndex = reader.readVarint();
        case (5, 0):
          batchId = reader.readVarint();
        default:
          reader.skip(wireType);
      }
    }

    if (batchSize < 1 || batchIndex < 0 || batchIndex >= batchSize) {
      throw const FormatException('Invalid batch info');
    }
    return OtpMigrationBatch(
      entries: entries,
      skippedCount: skipped,
      batchIndex: batchIndex,
      batchSize: batchSize,
      batchId: batchId,
    );
  }

  /// `null` for accounts Passvera cannot generate codes for.
  static AuthenticatorEntry? _decodeOtpParameters(Uint8List bytes) {
    var secret = Uint8List(0);
    var name = '';
    var issuer = '';
    var algorithm = 0;
    var digits = 0;
    var type = 0;

    final reader = _ProtoReader(bytes);
    while (!reader.isAtEnd) {
      final (field, wireType) = reader.readTag();
      switch ((field, wireType)) {
        case (1, 2):
          secret = reader.readBytes();
        case (2, 2):
          name = utf8.decode(reader.readBytes());
        case (3, 2):
          issuer = utf8.decode(reader.readBytes());
        case (4, 0):
          algorithm = reader.readVarint();
        case (5, 0):
          digits = reader.readVarint();
        case (6, 0):
          type = reader.readVarint();
        default:
          reader.skip(wireType);
      }
    }

    const typeTotp = 2;
    final totpAlgorithm = switch (algorithm) {
      0 || 1 => TotpAlgorithm.sha1,
      2 => TotpAlgorithm.sha256,
      3 => TotpAlgorithm.sha512,
      _ => null, // MD5 or unknown
    };
    if (type != typeTotp || totpAlgorithm == null || secret.isEmpty) {
      return null;
    }

    // Same label rules as otpauth:// ("Issuer:account").
    var account = name.trim();
    issuer = issuer.trim();
    final colon = account.indexOf(':');
    if (colon >= 0) {
      final labelIssuer = account.substring(0, colon).trim();
      account = account.substring(colon + 1).trim();
      if (issuer.isEmpty) issuer = labelIssuer;
    }

    return AuthenticatorEntry(
      id: OtpAuthParser.buildStorageId(issuer: issuer, account: account),
      issuer: issuer,
      account: account,
      secret: TotpGenerator.encodeBase32(secret),
      digits: digits == 2 ? 8 : 6,
      algorithm: totpAlgorithm,
    );
  }
}

/// Minimal protobuf wire-format reader (varint and length-delimited fields;
/// fixed-width fields are skipped). Throws [FormatException] on truncation.
class _ProtoReader {
  _ProtoReader(this._bytes);

  final Uint8List _bytes;
  int _pos = 0;

  bool get isAtEnd => _pos >= _bytes.length;

  (int field, int wireType) readTag() {
    final key = readVarint();
    return (key >> 3, key & 0x7);
  }

  int readVarint() {
    var result = 0;
    var shift = 0;
    while (true) {
      if (_pos >= _bytes.length) throw const FormatException('Truncated');
      final byte = _bytes[_pos++];
      result |= (byte & 0x7f) << shift;
      if (byte & 0x80 == 0) return result;
      shift += 7;
      if (shift > 63) throw const FormatException('Varint too long');
    }
  }

  Uint8List readBytes() {
    final length = readVarint();
    final end = _pos + length;
    if (length < 0 || end > _bytes.length) {
      throw const FormatException('Truncated');
    }
    final out = Uint8List.sublistView(_bytes, _pos, end);
    _pos = end;
    return out;
  }

  void skip(int wireType) {
    switch (wireType) {
      case 0:
        readVarint();
      case 1:
        _advance(8);
      case 2:
        readBytes();
      case 5:
        _advance(4);
      default:
        throw FormatException('Unsupported wire type $wireType');
    }
  }

  void _advance(int count) {
    if (_pos + count > _bytes.length) throw const FormatException('Truncated');
    _pos += count;
  }
}
