import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:passvera/domain/backup/bip39_english.dart';
import 'package:passvera/domain/errors/backup_failures.dart';

part 'recovery_key.freezed.dart';

/// The only secret that can open a Drive backup: 128 random bits, shown to
/// the user once as 12 BIP39 words (128 entropy bits + 4 checksum bits, 11
/// bits per word). Kept on this device for automatic backups; never uploaded.
// The private constructor keeps words/entropy validation mandatory; map/when
// are off because freezed would expose that private name as a parameter.
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
abstract class RecoveryKey with _$RecoveryKey {
  const RecoveryKey._();

  const factory RecoveryKey._fromEntropy(List<int> entropy) = _RecoveryKey;

  static const int entropyLength = 16;
  static const int wordCount = 12;
  static const int _checksumBits = entropyLength * 8 ~/ 32;

  factory RecoveryKey.generate([Random? random]) {
    final rng = random ?? Random.secure();
    return RecoveryKey._fromEntropy(
      List<int>.unmodifiable(
        List<int>.generate(entropyLength, (_) => rng.nextInt(256)),
      ),
    );
  }

  /// Exactly [entropyLength] bytes, e.g. from secure storage.
  static Either<BackupFailure, RecoveryKey> fromEntropy(List<int> entropy) {
    if (entropy.length != entropyLength ||
        entropy.any((b) => b < 0 || b > 255)) {
      return const Left(BackupFailure.invalidRecoveryKey());
    }
    return Right(RecoveryKey._fromEntropy(List<int>.unmodifiable(entropy)));
  }

  /// Parses user input: case and surrounding whitespace are ignored; any
  /// unknown word, wrong count or checksum mismatch is rejected.
  static Either<BackupFailure, RecoveryKey> fromWords(List<String> words) {
    final normalized = words
        .map((w) => w.trim().toLowerCase())
        .where((w) => w.isNotEmpty)
        .toList();
    if (normalized.length != wordCount) {
      return const Left(BackupFailure.invalidRecoveryKey());
    }

    final bits = StringBuffer();
    for (final word in normalized) {
      final index = _indexOf(word);
      if (index < 0) return const Left(BackupFailure.invalidRecoveryKey());
      bits.write(index.toRadixString(2).padLeft(11, '0'));
    }
    final all = bits.toString();
    final entropyBits = all.substring(0, entropyLength * 8);
    final entropy = [
      for (var i = 0; i < entropyLength; i++)
        int.parse(entropyBits.substring(i * 8, i * 8 + 8), radix: 2),
    ];
    if (all.substring(entropyLength * 8) != _checksum(entropy)) {
      return const Left(BackupFailure.invalidRecoveryKey());
    }
    return Right(RecoveryKey._fromEntropy(List<int>.unmodifiable(entropy)));
  }

  /// Word for BIP39 autocomplete / validation in the UI.
  static bool isWord(String word) => _indexOf(word.trim().toLowerCase()) >= 0;

  Uint8List get bytes => Uint8List.fromList(entropy);

  List<String> get words {
    final bits = entropy.map((b) => b.toRadixString(2).padLeft(8, '0')).join() +
        _checksum(entropy);
    return [
      for (var i = 0; i < wordCount; i++)
        bip39English[int.parse(bits.substring(i * 11, i * 11 + 11), radix: 2)],
    ];
  }

  static String _checksum(List<int> entropy) => sha256
      .convert(entropy)
      .bytes
      .first
      .toRadixString(2)
      .padLeft(8, '0')
      .substring(0, _checksumBits);

  /// The list is sorted (verified by tests), so binary search is exact.
  static int _indexOf(String word) {
    var low = 0;
    var high = bip39English.length - 1;
    while (low <= high) {
      final mid = (low + high) >> 1;
      final cmp = bip39English[mid].compareTo(word);
      if (cmp == 0) return mid;
      if (cmp < 0) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }
    return -1;
  }

  /// Never print the key.
  @override
  String toString() => 'RecoveryKey(***)';
}
