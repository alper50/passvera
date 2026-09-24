import 'dart:convert';

/// Test-only protobuf encoder for Google Authenticator export payloads.
List<int> _varint(int value) {
  final out = <int>[];
  var v = value;
  // Negative int32 values are encoded as 10-byte two's complement varints.
  for (var i = 0; i < 10; i++) {
    final byte = v & 0x7f;
    v = (v >> 7) & 0x01ffffffffffffff;
    if (v == 0) {
      out.add(byte);
      return out;
    }
    out.add(byte | 0x80);
  }
  return out;
}

List<int> _int(int field, int value) =>
    [..._varint(field << 3), ..._varint(value)];

List<int> _bytes(int field, List<int> value) =>
    [..._varint((field << 3) | 2), ..._varint(value.length), ...value];

List<int> otpParameters({
  required List<int> secret,
  String name = '',
  String issuer = '',
  int algorithm = 1,
  int digits = 1,
  int type = 2,
}) =>
    [
      ..._bytes(1, secret),
      if (name.isNotEmpty) ..._bytes(2, utf8.encode(name)),
      if (issuer.isNotEmpty) ..._bytes(3, utf8.encode(issuer)),
      ..._int(4, algorithm),
      ..._int(5, digits),
      ..._int(6, type),
    ];

List<int> migrationPayload(
  List<List<int>> accounts, {
  int batchSize = 1,
  int batchIndex = 0,
  int batchId = 42,
}) =>
    [
      for (final account in accounts) ..._bytes(1, account),
      ..._int(2, 1),
      ..._int(3, batchSize),
      ..._int(4, batchIndex),
      ..._int(5, batchId),
    ];

String migrationUri(List<int> payload) => 'otpauth-migration://offline?data='
    '${Uri.encodeComponent(base64.encode(payload))}';

/// `Hello!\xde\xad\xbe\xef` == Base32 `JBSWY3DPEHPK3PXP`.
const helloSecret = [72, 101, 108, 108, 111, 33, 0xde, 0xad, 0xbe, 0xef];
