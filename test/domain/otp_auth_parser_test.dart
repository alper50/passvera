import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/domain/otp_auth_parser.dart';
import 'package:passvera/domain/totp_generator.dart';

void main() {
  const invalidQr = Left<AuthenticatorFailure, AuthenticatorEntry>(
      AuthenticatorFailure.invalidQr());

  test('parses a standard otpauth URI', () {
    final entry = OtpAuthParser.parse(
      'otpauth://totp/GitHub:me%40example.com?secret=jbsw y3dp&period=60',
    ).getOrElse(() => throw StateError('parse failed'));

    expect(entry.issuer, 'GitHub');
    expect(entry.account, 'me@example.com');
    expect(entry.secret, 'JBSWY3DP');
    expect(entry.period, 60);
    expect(entry.id, 'totp:github%7Cme%40example.com');
  });

  test('rejects a label that is not valid UTF-8 instead of throwing', () {
    expect(
      OtpAuthParser.parse('otpauth://totp/a%E0b?secret=JBSWY3DP'),
      invalidQr,
    );
  });

  test('rejects a secret that is not Base32', () {
    for (final secret in ['!!!!', 'JBSW1Y3DP', 'A', '====']) {
      expect(
        OtpAuthParser.parse('otpauth://totp/x?secret=$secret'),
        invalidQr,
        reason: secret,
      );
    }
  });

  test('accepts Base32 with padding and separators', () {
    expect(
      OtpAuthParser.parse('otpauth://totp/x?secret=JBSW-Y3DP%3D%3D').isRight(),
      isTrue,
    );
  });

  test('accepts periods only within the supported range', () {
    Either<AuthenticatorFailure, AuthenticatorEntry> withPeriod(int p) =>
        OtpAuthParser.parse('otpauth://totp/x?secret=JBSWY3DP&period=$p');

    expect(withPeriod(OtpAuthParser.minPeriod).isRight(), isTrue);
    expect(withPeriod(OtpAuthParser.maxPeriod).isRight(), isTrue);
    expect(withPeriod(OtpAuthParser.minPeriod - 1), invalidQr);
    expect(withPeriod(OtpAuthParser.maxPeriod + 1), invalidQr);
  });

  test('isValidBase32 matches what decodeBase32 understands', () {
    expect(TotpGenerator.isValidBase32('jbsw y3dp ehpk 3pxp'), isTrue);
    expect(TotpGenerator.isValidBase32('JBSWY3DP0'), isFalse);
    expect(TotpGenerator.isValidBase32(''), isFalse);
  });
}
