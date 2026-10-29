import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/backup/backup_payload.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/errors/backup_failures.dart';
import 'package:passvera/infrastructure/backup/backup_codec.dart';

void main() {
  final codec = BackupCodec();
  final key = RecoveryKey.generate(Random(7));
  final otherKey = RecoveryKey.generate(Random(8));

  final payload = BackupPayload(
    createdAt: DateTime.utc(2026, 9, 25, 10, 30),
    passwords: const [
      ApplicationModel(key: 'Gmail', value: 'Sup3r!', tag: 'Personal'),
      ApplicationModel(
        key: 'Bank ÄÖÜ',
        value: 'ünicode-🔐 "quotes" \\ slash',
        tag: 'Finance',
        colorValue: 0xFF81C784,
      ),
    ],
    authenticators: const [
      AuthenticatorEntry(
        id: '',
        issuer: 'AWS',
        account: 'root',
        secret: 'GEZDGNBVGY3TQOJQ',
        digits: 8,
        algorithm: TotpAlgorithm.sha256,
      ),
    ],
    tagOrder: const ['Finance', 'Personal'],
  );

  Future<Either<BackupFailure, BackupPayload>> roundTrip(
    List<int> bytes, [
    RecoveryKey? with_,
  ]) =>
      codec.decode(bytes, with_ ?? key);

  test('round-trips every field, including unicode', () async {
    final bytes = await codec.encode(payload, key);
    expect(
        await roundTrip(bytes), Right<BackupFailure, BackupPayload>(payload));
  });

  test('body is padded to 1 KB blocks and nonces are fresh', () async {
    final a = await codec.encode(payload, key);
    final b = await codec.encode(payload, key);
    final body = a.length - BackupCodec.headerLength - BackupCodec.tagLength;
    expect(body % BackupCodec.paddingBlock, 0);
    expect(a, isNot(b), reason: 'same payload must not produce same bytes');
  });

  test('wrong key and damaged file are told apart', () async {
    final bytes = await codec.encode(payload, key);
    expect(
      await roundTrip(bytes, otherKey),
      const Left<BackupFailure, BackupPayload>(
        BackupFailure.wrongRecoveryKey(),
      ),
    );
  });

  test('any modified byte is rejected (header, body, tag)', () async {
    final bytes = await codec.encode(payload, key);
    // Skip the magic/version/keyId bytes: those have their own errors.
    final positions = [
      5 + BackupCodec.keyIdLength, // nonce
      BackupCodec.headerLength - 1, // createdAt
      BackupCodec.headerLength, // first body byte
      bytes.length ~/ 2, // middle of body
      bytes.length - 1, // tag
    ];
    for (final i in positions) {
      final tampered = [...bytes]..[i] ^= 0x01;
      expect(
        await roundTrip(tampered),
        const Left<BackupFailure, BackupPayload>(
          BackupFailure.corruptedBackup(),
        ),
        reason: 'byte $i',
      );
    }
  });

  test('truncated, foreign and future files are rejected', () async {
    final bytes = await codec.encode(payload, key);
    expect(
      await roundTrip(bytes.sublist(0, 30)),
      const Left<BackupFailure, BackupPayload>(BackupFailure.corruptedBackup()),
    );
    expect(
      await roundTrip([...bytes]..[0] = 0x00),
      const Left<BackupFailure, BackupPayload>(BackupFailure.corruptedBackup()),
    );
    expect(
      await roundTrip([...bytes]..[4] = 2),
      const Left<BackupFailure, BackupPayload>(
        BackupFailure.unsupportedVersion(),
      ),
    );
  });

  test('backups made before tag order existed still open', () async {
    // A v1 file written exactly as the format doc describes, without the
    // optional `tagOrder` field.
    final createdAt = DateTime.utc(2026, 9, 1);
    final json = utf8.encode(jsonEncode({
      'schema': BackupCodec.payloadSchema,
      'createdAt': createdAt.toIso8601String(),
      'passwords': [
        {'name': 'Gmail', 'password': 'p', 'tag': 'Mail', 'color': 1},
      ],
      'authenticators': [],
    }));
    final encKey = await Hkdf(hmac: Hmac.sha256(), outputLength: 32).deriveKey(
      secretKey: SecretKey(key.bytes),
      nonce: utf8.encode('passvera/backup'),
      info: utf8.encode('passvera/backup/enc/v1'),
    );
    final aes = AesGcm.with256bits();
    final nonce = aes.newNonce();
    final header = [
      ...BackupCodec.magic,
      BackupCodec.version,
      ...await codec.keyIdOf(key),
      ...nonce,
      ...(ByteData(8)..setUint64(0, createdAt.millisecondsSinceEpoch))
          .buffer
          .asUint8List(),
    ];
    final box = await aes.encrypt(
      json,
      secretKey: encKey,
      nonce: nonce,
      aad: header,
    );

    final decoded =
        await roundTrip([...header, ...box.cipherText, ...box.mac.bytes]);
    final legacy = decoded.getOrElse(() => throw StateError('$decoded'));
    expect(legacy.passwords.single.key, 'Gmail');
    expect(legacy.tagOrder, isEmpty);
  });

  test('empty vault round-trips', () async {
    final empty = BackupPayload(
      createdAt: DateTime.utc(2026),
      passwords: const [],
      authenticators: const [],
    );
    expect(
      await roundTrip(await codec.encode(empty, key)),
      Right<BackupFailure, BackupPayload>(empty),
    );
  });
}
