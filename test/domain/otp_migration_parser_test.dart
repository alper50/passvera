import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/domain/otp_migration_batch.dart';
import 'package:passvera/domain/otp_migration_parser.dart';

import 'migration_payload_builder.dart';

void main() {
  OtpMigrationBatch parseOk(String uri) => OtpMigrationParser.parse(uri)
      .getOrElse(() => throw StateError('parse failed for $uri'));

  test('decodes a TOTP account with issuer taken from the label', () {
    final batch = parseOk(migrationUri(migrationPayload([
      otpParameters(secret: helloSecret, name: 'Example:alice@google.com'),
    ])));

    final entry = batch.entries.single;
    expect(entry.issuer, 'Example');
    expect(entry.account, 'alice@google.com');
    expect(entry.secret, 'JBSWY3DPEHPK3PXP');
    expect(entry.digits, 6);
    expect(entry.period, 30);
    expect(entry.algorithm, TotpAlgorithm.sha1);
    expect(entry.id, 'totp:example%7Calice%40google.com');
    expect(batch.skippedCount, 0);
  });

  test('prefers the issuer field and maps algorithm and digits', () {
    final entry = parseOk(migrationUri(migrationPayload([
      otpParameters(
        secret: helloSecret,
        name: 'Label:bob',
        issuer: 'GitHub',
        algorithm: 2,
        digits: 2,
      ),
    ]))).entries.single;

    expect(entry.issuer, 'GitHub');
    expect(entry.account, 'bob');
    expect(entry.algorithm, TotpAlgorithm.sha256);
    expect(entry.digits, 8);
  });

  test('skips HOTP, MD5 and secret-less accounts but keeps the rest', () {
    final batch = parseOk(migrationUri(migrationPayload([
      otpParameters(secret: helloSecret, name: 'hotp', type: 1),
      otpParameters(secret: helloSecret, name: 'md5', algorithm: 4),
      otpParameters(secret: const [], name: 'empty'),
      otpParameters(secret: helloSecret, name: 'ok'),
    ])));

    expect(batch.entries.map((e) => e.account), ['ok']);
    expect(batch.skippedCount, 3);
  });

  test('reads batch info, including negative batch ids', () {
    final batch = parseOk(migrationUri(migrationPayload(
      [otpParameters(secret: helloSecret, name: 'a')],
      batchSize: 3,
      batchIndex: 2,
      batchId: -1857769365,
    )));

    expect(batch.batchSize, 3);
    expect(batch.batchIndex, 2);
    expect(batch.batchId, -1857769365);
  });

  test('keeps a literal "+" in the base64 data (not form-decoded)', () {
    // Pick a secret whose base64 payload contains '+'.
    late List<int> payload;
    for (var b = 0; b < 256; b++) {
      payload = migrationPayload([
        otpParameters(secret: [...helloSecret, b, 0xfb, 0xef], name: 'p'),
      ]);
      if (base64.encode(payload).contains('+')) break;
    }
    final raw = 'otpauth-migration://offline?data=${base64.encode(payload)}';
    expect(raw, contains('+'));

    expect(OtpMigrationParser.parse(raw).isRight(), isTrue);
  });

  test('rejects malformed input as invalidQr', () {
    const invalid = Left<AuthenticatorFailure, OtpMigrationBatch>(
      AuthenticatorFailure.invalidQr(),
    );
    final valid = migrationPayload([otpParameters(secret: helloSecret)]);

    expect(OtpMigrationParser.parse('otpauth://totp/x?secret=A'), invalid);
    expect(OtpMigrationParser.parse('otpauth-migration://offline'), invalid);
    expect(
      OtpMigrationParser.parse('otpauth-migration://offline?data=%%%'),
      invalid,
    );
    expect(
      OtpMigrationParser.parse(
        migrationUri(valid.sublist(0, valid.length - 3)),
      ),
      invalid,
    );
    expect(
      OtpMigrationParser.parse(migrationUri(migrationPayload(
        [otpParameters(secret: helloSecret)],
        batchSize: 2,
        batchIndex: 2,
      ))),
      invalid,
    );
  });
}
