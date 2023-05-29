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
  Future<bool> encryptValue({required ApplicationModel appModel}) {
    return _service.encryptValue(appModel: appModel);
  }

  @override
  Future<Either<StorageFailure, List<ApplicationModel>>> getAllValues() {
    return _service.getAllValues();
  }
}
