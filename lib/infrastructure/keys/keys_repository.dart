import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_keys_repository.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';

@LazySingleton(as: IKeysRepository)
class KeysRepository extends IKeysRepository {
  final KeysService _service;

  KeysRepository(this._service);

  @override
  Future<Either<StorageFailure, Unit>> encryptValue(
      {required ApplicationModel appModel}) async {
    return await _service.encryptValue(appModel: appModel);
  }

  @override
  Future<Either<StorageFailure, List<ApplicationModel>>> getAllValues() async {
    return await _service.getAllValues();
  }

  @override
  Future<Either<StorageFailure, Unit>> deleteValue(
      {required String appKey}) async {
    return await _service.deleteSingleValue(appKey: appKey);
  }
  
  @override
  Future<Either<StorageFailure, Unit>> updateSingleValue({required ApplicationModel model}) async{
   return await _service.updateSingleValue(model: model);
  }
}
