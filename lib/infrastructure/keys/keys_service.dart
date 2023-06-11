import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';

@LazySingleton()
class KeysService {
  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
  late final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());

  Future<Either<StorageFailure, Unit>> encryptValue(
      {required ApplicationModel appModel}) async {
    try {
      final resultIfKeyExist = await getSingleValue(key: appModel.key);
      if (resultIfKeyExist.isLeft()) {
        return const Left(StorageFailure.keyAlreadyUsed());
      } else {
        await storage.write(key: appModel.key, value: appModel.value);
        return const Right(unit);
      }
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
        ApplicationModel model = ApplicationModel(key: key, value: value);
        models.add(model);
      });
      models.sort((a, b) => a.key.toLowerCase().compareTo(b.key.toLowerCase()));
      return Right(models);
    } catch (e) {
      return Left(StorageFailure.unexpected(e));
    }
  }

  Future<Either<StorageFailure, Unit>> getSingleValue(
      {required String key}) async {
    try {
      final result = await storage.read(key: key);
      if (result == key) {
        return const Left(StorageFailure.keyAlreadyUsed());
      } else {
        return const Right(unit);
      }
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
}
