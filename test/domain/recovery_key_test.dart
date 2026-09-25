import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/domain/backup/bip39_english.dart';
import 'package:passvera/domain/backup/recovery_key.dart';

List<int> _hex(String hex) => [
      for (var i = 0; i < hex.length; i += 2)
        int.parse(hex.substring(i, i + 2), radix: 16),
    ];

void main() {
  test('wordlist is the official BIP39 English list', () {
    final digest = sha256.convert(utf8.encode('${bip39English.join('\n')}\n'));
    expect(
      digest.toString(),
      '2f5eed53a4727b4bf8880d8f3f199efc90e58503646d9ff8eff3a2ed3b24dbda',
    );
    expect(bip39English, hasLength(2048));
    expect([...bip39English]..sort(), bip39English, reason: 'sorted');
  });

  // Official BIP39 test vectors (trezor/python-mnemonic vectors.json),
  // 128-bit entries.
  const vectors = {
    '00000000000000000000000000000000':
        'abandon abandon abandon abandon abandon abandon abandon abandon '
            'abandon abandon abandon about',
    '7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f':
        'legal winner thank year wave sausage worth useful legal winner '
            'thank yellow',
    '80808080808080808080808080808080':
        'letter advice cage absurd amount doctor acoustic avoid letter '
            'advice cage above',
    'ffffffffffffffffffffffffffffffff':
        'zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo wrong',
    '9e885d952ad362caeb4efe34a8e91bd2':
        'ozone drill grab fiber curtain grace pudding thank cruise elder '
            'eight picnic',
  };

  vectors.forEach((entropy, mnemonic) {
    test('entropy $entropy <-> words', () {
      final key = RecoveryKey.fromEntropy(_hex(entropy))
          .getOrElse(() => throw StateError('invalid'));
      expect(key.words.join(' '), mnemonic);

      final parsed = RecoveryKey.fromWords(mnemonic.split(' '))
          .getOrElse(() => throw StateError('rejected'));
      expect(parsed.bytes, _hex(entropy));
    });
  });

  test('input is case/whitespace tolerant', () {
    final words = ' Legal WINNER thank year wave sausage worth useful legal '
            'winner thank Yellow '
        .split(' ');
    expect(RecoveryKey.fromWords(words).isRight(), isTrue);
  });

  test('rejects checksum mismatch, unknown words and wrong length', () {
    // Last word changed: valid word, wrong checksum.
    final badChecksum =
        'legal winner thank year wave sausage worth useful legal winner '
                'thank zoo'
            .split(' ');
    expect(RecoveryKey.fromWords(badChecksum).isLeft(), isTrue);
    expect(
        RecoveryKey.fromWords(['notaword', ...List.filled(11, 'zoo')]).isLeft(),
        isTrue);
    expect(RecoveryKey.fromWords(List.filled(11, 'abandon')).isLeft(), isTrue);
    expect(RecoveryKey.fromEntropy(List.filled(15, 0)).isLeft(), isTrue);
  });

  test('generated keys round-trip through words', () {
    final random = Random(42);
    for (var i = 0; i < 200; i++) {
      final key = RecoveryKey.generate(random);
      expect(key.words, hasLength(12));
      final back = RecoveryKey.fromWords(key.words)
          .getOrElse(() => throw StateError('rejected'));
      expect(back, key);
    }
  });

  test('never prints the key material', () {
    final key = RecoveryKey.generate(Random(1));
    expect(key.toString(), isNot(contains(key.bytes.first.toString())));
    expect(key.toString(), 'RecoveryKey(***)');
    for (final word in key.words) {
      expect(key.toString(), isNot(contains(word)));
    }
  });
}
