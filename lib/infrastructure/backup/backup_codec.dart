import 'dart:convert';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/backup/backup_payload.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/errors/backup_failures.dart';

/// Backup file format v1.
///
/// ```
/// header (41 bytes, authenticated as AAD):
///   "PVBK" | version u8 = 1 | keyId (16) | nonce (12) | createdAt ms u64 BE
/// body:
///   AES-256-GCM(padded UTF-8 JSON payload) | GCM tag (16)
/// ```
/// Keys come from the 128-bit recovery key via HKDF-SHA256 with distinct
/// `info` labels: one for encryption, one for [keyId], which lets a restore
/// tell "wrong recovery key" apart from "damaged file". The JSON is padded
/// with spaces to a multiple of [paddingBlock] so the file size only hints
/// at the vault size.
@lazySingleton
class BackupCodec {
  static const List<int> magic = [0x50, 0x56, 0x42, 0x4B]; // "PVBK"
  static const int version = 1;
  static const int keyIdLength = 16;
  static const int nonceLength = 12;
  static const int headerLength = 4 + 1 + keyIdLength + nonceLength + 8;
  static const int tagLength = 16;
  static const int paddingBlock = 1024;
  static const int payloadSchema = 1;

  static final List<int> _hkdfSalt = utf8.encode('passvera/backup');
  static final List<int> _encInfo = utf8.encode('passvera/backup/enc/v1');
  static final List<int> _keyIdInfo = utf8.encode('passvera/backup/key-id/v1');

  final AesGcm _aes = AesGcm.with256bits(nonceLength: nonceLength);

  Future<Uint8List> encode(BackupPayload payload, RecoveryKey key) async {
    final encKey = await _derive(key, _encInfo, 32);
    final keyId = await keyIdOf(key);
    final nonce = _aes.newNonce();

    final header = BytesBuilder()
      ..add(magic)
      ..addByte(version)
      ..add(keyId)
      ..add(nonce)
      ..add(_u64(payload.createdAt.millisecondsSinceEpoch));
    final headerBytes = header.toBytes();

    final box = await _aes.encrypt(
      _pad(utf8.encode(jsonEncode(_payloadToJson(payload)))),
      secretKey: encKey,
      nonce: nonce,
      aad: headerBytes,
    );
    return (BytesBuilder()
          ..add(headerBytes)
          ..add(box.cipherText)
          ..add(box.mac.bytes))
        .toBytes();
  }

  Future<Either<BackupFailure, BackupPayload>> decode(
    List<int> bytes,
    RecoveryKey key,
  ) async {
    if (bytes.length < headerLength + tagLength || !_startsWith(bytes, magic)) {
      return const Left(BackupFailure.corruptedBackup());
    }
    if (bytes[4] != version) {
      return const Left(BackupFailure.unsupportedVersion());
    }
    final storedKeyId = bytes.sublist(5, 5 + keyIdLength);
    if (!_equal(storedKeyId, await keyIdOf(key))) {
      return const Left(BackupFailure.wrongRecoveryKey());
    }

    final header = bytes.sublist(0, headerLength);
    final nonce = bytes.sublist(5 + keyIdLength, 5 + keyIdLength + nonceLength);
    final body = bytes.sublist(headerLength, bytes.length - tagLength);
    final mac = Mac(bytes.sublist(bytes.length - tagLength));
    try {
      final clear = await _aes.decrypt(
        SecretBox(body, nonce: nonce, mac: mac),
        secretKey: await _derive(key, _encInfo, 32),
        aad: header,
      );
      return Right(_payloadFromJson(jsonDecode(utf8.decode(clear))));
    } on SecretBoxAuthenticationError {
      return const Left(BackupFailure.corruptedBackup());
    } on FormatException {
      return const Left(BackupFailure.corruptedBackup());
    } on TypeError {
      return const Left(BackupFailure.corruptedBackup());
    }
  }

  /// Public identifier of a recovery key (not a secret; one-way).
  Future<List<int>> keyIdOf(RecoveryKey key) async =>
      (await _derive(key, _keyIdInfo, keyIdLength)).extractBytes();

  Future<SecretKey> _derive(RecoveryKey key, List<int> info, int length) =>
      Hkdf(hmac: Hmac.sha256(), outputLength: length).deriveKey(
        secretKey: SecretKey(key.bytes),
        nonce: _hkdfSalt,
        info: info,
      );

  static Map<String, Object> _payloadToJson(BackupPayload p) => {
        'schema': payloadSchema,
        'createdAt': p.createdAt.toUtc().toIso8601String(),
        'passwords': [
          for (final m in p.passwords)
            {
              'name': m.key,
              'password': m.value,
              'tag': m.tag,
              'color': m.colorValue,
            },
        ],
        'authenticators': [
          for (final e in p.authenticators)
            {
              'issuer': e.issuer,
              'account': e.account,
              'secret': e.secret,
              'digits': e.digits,
              'period': e.period,
              'algorithm': e.algorithm.wireName,
            },
        ],
      };

  static BackupPayload _payloadFromJson(Object? json) {
    final map = json as Map<String, dynamic>;
    if (map['schema'] != payloadSchema) {
      throw const FormatException('Unknown payload schema');
    }
    return BackupPayload(
      createdAt: DateTime.parse(map['createdAt'] as String),
      passwords: [
        for (final m in map['passwords'] as List)
          ApplicationModel(
            key: m['name'] as String,
            value: m['password'] as String,
            tag: m['tag'] as String,
            colorValue: m['color'] as int,
          ),
      ],
      authenticators: [
        for (final e in map['authenticators'] as List)
          AuthenticatorEntry(
            // Storage id is derived on restore (see OtpAuthParser).
            id: '',
            issuer: e['issuer'] as String,
            account: e['account'] as String,
            secret: e['secret'] as String,
            digits: e['digits'] as int,
            period: e['period'] as int,
            algorithm: TotpAlgorithm.fromString(e['algorithm'] as String),
          ),
      ],
    );
  }

  /// Spaces keep the JSON valid (trailing whitespace is ignored).
  static List<int> _pad(List<int> data) {
    final padded = ((data.length ~/ paddingBlock) + 1) * paddingBlock;
    return [...data, ...List.filled(padded - data.length, 0x20)];
  }

  static List<int> _u64(int value) =>
      (ByteData(8)..setUint64(0, value, Endian.big)).buffer.asUint8List();

  static bool _startsWith(List<int> bytes, List<int> prefix) {
    for (var i = 0; i < prefix.length; i++) {
      if (bytes[i] != prefix[i]) return false;
    }
    return true;
  }

  static bool _equal(List<int> a, List<int> b) {
    if (a.length != b.length) return false;
    var diff = 0;
    for (var i = 0; i < a.length; i++) {
      diff |= a[i] ^ b[i];
    }
    return diff == 0;
  }
}
