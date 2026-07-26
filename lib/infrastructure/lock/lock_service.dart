import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/errors/lock_failures.dart';
import 'package:passvera/domain/lock_constants.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';

@LazySingleton()
class LockService {
  /// Legacy fixed salt used before per-install random salts.
  static const String _legacyPinSalt = 'passvera_pin_v1';
  static const int _saltByteLength = 16;

  final KeysService _keysService;
  final Random _secureRandom = Random.secure();

  LockService(this._keysService);

  Future<Either<LockFailure, bool>> isPinSet() async {
    try {
      final stored =
          await _keysService.storage.read(key: KeysService.pinHashKey);
      return Right(stored != null && stored.isNotEmpty);
    } catch (e) {
      return Left(LockFailure.unexpected(e));
    }
  }

  Future<Either<LockFailure, int>> getLockoutRemainingSeconds() async {
    try {
      return Right(await _remainingLockoutSeconds());
    } catch (e) {
      return Left(LockFailure.unexpected(e));
    }
  }

  Future<Either<LockFailure, Unit>> verifyPin({required String pin}) async {
    try {
      final remaining = await _remainingLockoutSeconds();
      if (remaining > 0) {
        return Left(LockFailure.lockedOut(remainingSeconds: remaining));
      }

      final validation = _validatePin(pin);
      if (validation != null) {
        return Left(validation);
      }

      final storedHash =
          await _keysService.storage.read(key: KeysService.pinHashKey);
      if (storedHash == null || storedHash.isEmpty) {
        return const Left(LockFailure.pinNotSet());
      }

      final storedSalt =
          await _keysService.storage.read(key: KeysService.pinSaltKey);

      if (storedSalt != null && storedSalt.isNotEmpty) {
        if (storedHash != _hashPin(pin, storedSalt)) {
          return Left(await _registerFailedAttempt());
        }
      } else {
        // Migrate PIN hashes created with the old fixed salt.
        if (storedHash != _hashPin(pin, _legacyPinSalt)) {
          return Left(await _registerFailedAttempt());
        }
        await _persistPinCredentials(pin: pin);
      }

      await _clearAttempts();
      return const Right(unit);
    } catch (e) {
      return Left(LockFailure.unexpected(e));
    }
  }

  Future<Either<LockFailure, Unit>> setPin({required String pin}) async {
    try {
      final validation = _validatePin(pin);
      if (validation != null) {
        return Left(validation);
      }

      final existing =
          await _keysService.storage.read(key: KeysService.pinHashKey);
      if (existing != null && existing.isNotEmpty) {
        return const Left(LockFailure.pinAlreadySet());
      }

      await _persistPinCredentials(pin: pin);
      await _clearAttempts();
      return const Right(unit);
    } catch (e) {
      return Left(LockFailure.unexpected(e));
    }
  }

  Future<Either<LockFailure, Unit>> updatePin({
    required String currentPin,
    required String newPin,
  }) async {
    try {
      final verifyResult = await verifyPin(pin: currentPin);
      if (verifyResult.isLeft()) {
        return verifyResult;
      }

      final validation = _validatePin(newPin);
      if (validation != null) {
        return Left(validation);
      }

      await _persistPinCredentials(pin: newPin);
      await _clearAttempts();
      return const Right(unit);
    } catch (e) {
      return Left(LockFailure.unexpected(e));
    }
  }

  Future<Either<LockFailure, Unit>> removePin({
    required String currentPin,
  }) async {
    try {
      final verifyResult = await verifyPin(pin: currentPin);
      if (verifyResult.isLeft()) {
        return verifyResult;
      }

      await _keysService.storage.delete(key: KeysService.pinHashKey);
      await _keysService.storage.delete(key: KeysService.pinSaltKey);
      await _clearAttempts();
      return const Right(unit);
    } catch (e) {
      return Left(LockFailure.unexpected(e));
    }
  }

  Future<void> _persistPinCredentials({required String pin}) async {
    final salt = _generateSalt();
    await _keysService.storage.write(
      key: KeysService.pinSaltKey,
      value: salt,
    );
    await _keysService.storage.write(
      key: KeysService.pinHashKey,
      value: _hashPin(pin, salt),
    );
  }

  String _generateSalt() {
    final bytes = Uint8List(_saltByteLength);
    for (var i = 0; i < bytes.length; i++) {
      bytes[i] = _secureRandom.nextInt(256);
    }
    return base64UrlEncode(bytes);
  }

  Future<LockFailure> _registerFailedAttempt() async {
    final current = await _readAttempts();
    final next = current + 1;
    await _keysService.storage.write(
      key: KeysService.pinAttemptsKey,
      value: next.toString(),
    );

    if (next >= kMaxPinAttempts) {
      final until = DateTime.now()
          .add(const Duration(seconds: kPinLockoutSeconds))
          .millisecondsSinceEpoch
          .toString();
      await _keysService.storage.write(
        key: KeysService.pinLockoutUntilKey,
        value: until,
      );
      await _keysService.storage.write(
        key: KeysService.pinAttemptsKey,
        value: '0',
      );
      return const LockFailure.lockedOut(remainingSeconds: kPinLockoutSeconds);
    }

    return const LockFailure.wrongPin();
  }

  Future<void> _clearAttempts() async {
    await _keysService.storage.delete(key: KeysService.pinAttemptsKey);
    await _keysService.storage.delete(key: KeysService.pinLockoutUntilKey);
  }

  Future<int> _readAttempts() async {
    final raw =
        await _keysService.storage.read(key: KeysService.pinAttemptsKey);
    return int.tryParse(raw ?? '') ?? 0;
  }

  Future<int> _remainingLockoutSeconds() async {
    final raw =
        await _keysService.storage.read(key: KeysService.pinLockoutUntilKey);
    final untilMs = int.tryParse(raw ?? '');
    if (untilMs == null) {
      return 0;
    }
    final remaining = DateTime.fromMillisecondsSinceEpoch(untilMs)
        .difference(DateTime.now())
        .inSeconds;
    if (remaining <= 0) {
      await _keysService.storage.delete(key: KeysService.pinLockoutUntilKey);
      return 0;
    }
    return remaining;
  }

  LockFailure? _validatePin(String pin) {
    final isDigitsOnly = RegExp(r'^\d+$').hasMatch(pin);
    if (!isDigitsOnly || pin.length != kAppPinLength) {
      return const LockFailure.invalidPin();
    }
    return null;
  }

  String _hashPin(String pin, String salt) {
    final bytes = utf8.encode('$salt:$pin');
    return sha256.convert(bytes).toString();
  }
}
