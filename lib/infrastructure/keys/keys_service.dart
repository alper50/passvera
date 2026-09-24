import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';

@LazySingleton()
class KeysService {
  static const String onboardKey = 'onboard';
  static const String onboardCompletedValue = 'true';
  static const String pinHashKey = 'app_pin_hash';
  static const String pinSaltKey = 'app_pin_salt';
  static const String pinAttemptsKey = 'app_pin_attempts';
  static const String pinLockoutUntilKey = 'app_pin_lockout_until';
  static const Set<String> metaKeys = {
    onboardKey,
    pinHashKey,
    pinSaltKey,
    pinAttemptsKey,
    pinLockoutUntilKey,
  };

  /// flutter_secure_storage 10 moves data written by v9 (Jetpack
  /// EncryptedSharedPreferences) to its own ciphers on first access, key by
  /// key, falling back to the old store if that fails. `resetOnError`
  /// defaults to true since v10 and would permanently wipe the vault on any
  /// read error, so it stays off.
  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        resetOnError: false,
        migrateOnAlgorithmChange: true,
      );
  late final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());

  Future<Either<StorageFailure, Unit>> encryptValue(
      {required ApplicationModel appModel}) async {
    try {
      final existing = await storage.read(key: appModel.key);
      if (existing != null) {
        return const Left(StorageFailure.keyAlreadyUsed());
      }
      await storage.write(
        key: appModel.key,
        value: appModel.toStorageValue(),
      );
      return const Right(unit);
    } catch (e) {
      return Left(
        StorageFailure.unexpected(e),
      );
    }
  }

  Future<Either<StorageFailure, List<ApplicationModel>>> getAllValues() async {
    try {
      final result = await storage.readAll();
      final models = <ApplicationModel>[];
      result.forEach((key, value) {
        if (metaKeys.contains(key) || key.startsWith('totp:')) {
          return;
        }
        models.add(ApplicationModel.fromStorage(key: key, raw: value));
      });
      models.sort((a, b) {
        final tagCmp = a.tag.toLowerCase().compareTo(b.tag.toLowerCase());
        if (tagCmp != 0) return tagCmp;
        return a.key.toLowerCase().compareTo(b.key.toLowerCase());
      });
      return Right(models);
    } catch (e) {
      return Left(StorageFailure.unexpected(e));
    }
  }

  /// Right if the key exists, Left([StorageFailure.emptyKey]) if missing.
  Future<Either<StorageFailure, Unit>> getSingleValue(
      {required String key}) async {
    try {
      final result = await storage.read(key: key);
      if (result == null) {
        return const Left(StorageFailure.emptyKey());
      }
      return const Right(unit);
    } catch (e) {
      return Left(StorageFailure.unexpected(e));
    }
  }

  Future<Either<StorageFailure, Unit>> deleteSingleValue(
      {required String appKey}) async {
    try {
      await storage.delete(key: appKey);
      return const Right(unit);
    } catch (e) {
      return Left(StorageFailure.unexpected(e));
    }
  }

  /// Writes the new entry before removing [oldKey], so a failed write never
  /// loses the original. Renaming onto another existing key is rejected.
  Future<Either<StorageFailure, Unit>> updateSingleValue(
      {required ApplicationModel model, required String oldKey}) async {
    try {
      final existing = await storage.read(key: oldKey);
      if (existing == null) {
        return const Left(StorageFailure.emptyKey());
      }

      final isRename = model.key != oldKey;
      if (isRename && await storage.containsKey(key: model.key)) {
        return const Left(StorageFailure.keyAlreadyUsed());
      }

      await storage.write(
        key: model.key,
        value: model.toStorageValue(),
      );
      if (isRename) {
        await storage.delete(key: oldKey);
      }
      return const Right(unit);
    } catch (e) {
      return Left(StorageFailure.unexpected(e));
    }
  }
}
