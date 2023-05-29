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

  Future<bool> encryptValue({required ApplicationModel appModel}) async {
    try {
      await storage.write(key: appModel.key, value: appModel.value);
      return true;
    } catch (e) {
      return false;
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
      return Right(models);
    } catch (e) {
      return Left(StorageFailure.unexpected(e));
    }
  }
}
