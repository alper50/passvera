import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:passvera/domain/authenticator_entry.dart';

/// Pure-Dart TOTP (RFC 6238) + Base32 decode for authenticator secrets.
class TotpGenerator {
  TotpGenerator._();

  static String generate(
    AuthenticatorEntry entry, {
    DateTime? at,
  }) {
    final now = at ?? DateTime.now().toUtc();
    final counter = now.millisecondsSinceEpoch ~/ 1000 ~/ entry.period;
    return generateForCounter(entry, counter);
  }

  static String generateForCounter(AuthenticatorEntry entry, int counter) {
    final key = decodeBase32(entry.secret);
    if (key.isEmpty) return ''.padLeft(entry.digits, '0');

    final counterBytes = ByteData(8)..setUint64(0, counter, Endian.big);
    final hmacBytes = _hmac(entry.algorithm, key, counterBytes.buffer.asUint8List());
    final offset = hmacBytes.last & 0x0f;
    final binary = ((hmacBytes[offset] & 0x7f) << 24) |
        ((hmacBytes[offset + 1] & 0xff) << 16) |
        ((hmacBytes[offset + 2] & 0xff) << 8) |
        (hmacBytes[offset + 3] & 0xff);
    final otp = binary % pow(10, entry.digits).toInt();
    return otp.toString().padLeft(entry.digits, '0');
  }

  /// Seconds remaining in the current [period] window.
  static int remainingSeconds({
    required int period,
    DateTime? at,
  }) {
    final now = at ?? DateTime.now().toUtc();
    final epoch = now.millisecondsSinceEpoch ~/ 1000;
    return period - (epoch % period);
  }

  static double progress({
    required int period,
    DateTime? at,
  }) {
    final remaining = remainingSeconds(period: period, at: at);
    return remaining / period;
  }

  static List<int> _hmac(
    TotpAlgorithm algorithm,
    List<int> key,
    List<int> message,
  ) {
    final hmacKey = Hmac(_hash(algorithm), key);
    return hmacKey.convert(message).bytes;
  }

  static Hash _hash(TotpAlgorithm algorithm) {
    switch (algorithm) {
      case TotpAlgorithm.sha1:
        return sha1;
      case TotpAlgorithm.sha256:
        return sha256;
      case TotpAlgorithm.sha512:
        return sha512;
    }
  }

  /// RFC 4648 Base32 (ignores spaces and padding).
  static Uint8List decodeBase32(String input) {
    const alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ234567';
    final cleaned = input
        .toUpperCase()
        .replaceAll(RegExp(r'[\s=]+'), '')
        .replaceAll('-', '');
    if (cleaned.isEmpty) return Uint8List(0);

    var buffer = 0;
    var bitsLeft = 0;
    final out = <int>[];

    for (final codeUnit in cleaned.codeUnits) {
      final char = String.fromCharCode(codeUnit);
      final val = alphabet.indexOf(char);
      if (val < 0) continue;
      buffer = (buffer << 5) | val;
      bitsLeft += 5;
      if (bitsLeft >= 8) {
        out.add((buffer >> (bitsLeft - 8)) & 0xff);
        bitsLeft -= 8;
      }
    }
    return Uint8List.fromList(out);
  }
}
