import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/infrastructure/keys/storage_keys.dart';

/// Password entries and app metadata in secure storage (schema 2 layout, see
/// [StorageKeys]). [ApplicationModel.key] is the bare entry name; the storage
/// key adds the `pw:` namespace.
@LazySingleton()
class KeysService {
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
      final key = StorageKeys.password(appModel.key);
      if (await storage.containsKey(key: key)) {
        return const Left(StorageFailure.keyAlreadyUsed());
      }
      await storage.write(key: key, value: appModel.toStorageValue());
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
        if (!key.startsWith(StorageKeys.passwordPrefix)) return;
        models.add(
          ApplicationModel.fromStorage(
            key: key.substring(StorageKeys.passwordPrefix.length),
            raw: value,
          ),
        );
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

  Future<Either<StorageFailure, bool>> isOnboardCompleted() async {
    try {
      return Right(await storage.containsKey(key: StorageKeys.onboard));
    } catch (e) {
      return Left(StorageFailure.unexpected(e));
    }
  }

  Future<Either<StorageFailure, Unit>> completeOnboard() async {
    try {
      await storage.write(
        key: StorageKeys.onboard,
        value: StorageKeys.onboardCompletedValue,
      );
      return const Right(unit);
    } catch (e) {
      return Left(StorageFailure.unexpected(e));
    }
  }

  Future<Either<StorageFailure, Unit>> deleteSingleValue(
      {required String appKey}) async {
    try {
      await storage.delete(key: StorageKeys.password(appKey));
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
      final oldStorageKey = StorageKeys.password(oldKey);
      final newStorageKey = StorageKeys.password(model.key);
      if (!await storage.containsKey(key: oldStorageKey)) {
        return const Left(StorageFailure.emptyKey());
      }

      final isRename = model.key != oldKey;
      if (isRename && await storage.containsKey(key: newStorageKey)) {
        return const Left(StorageFailure.keyAlreadyUsed());
      }

      await storage.write(key: newStorageKey, value: model.toStorageValue());
      if (isRename) {
        await storage.delete(key: oldStorageKey);
      }
      return const Right(unit);
    } catch (e) {
      return Left(StorageFailure.unexpected(e));
    }
  }
}
