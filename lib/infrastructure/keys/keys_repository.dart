import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_keys_repository.dart';
import 'package:passvera/infrastructure/backup/vault_change_notifier.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';

@LazySingleton(as: IKeysRepository)
class KeysRepository extends IKeysRepository {
  final KeysService _service;
  final VaultChangeNotifier _changes;

  KeysRepository(this._service, this._changes);

  /// Announces successful writes (drives the automatic Drive backup).
  Future<Either<StorageFailure, Unit>> _notifying(
    Future<Either<StorageFailure, Unit>> write,
  ) async {
    final result = await write;
    if (result.isRight()) _changes.notify();
    return result;
  }

  @override
  Future<Either<StorageFailure, Unit>> encryptValue(
      {required ApplicationModel appModel}) async {
    return _notifying(_service.encryptValue(appModel: appModel));
  }

  @override
  Future<Either<StorageFailure, List<ApplicationModel>>> getAllValues() async {
    return await _service.getAllValues();
  }

  @override
  Future<Either<StorageFailure, Unit>> deleteValue(
      {required String appKey}) async {
    return _notifying(_service.deleteSingleValue(appKey: appKey));
  }

  @override
  Future<Either<StorageFailure, Unit>> updateSingleValue(
      {required ApplicationModel model, required String oldKey}) async {
    return _notifying(_service.updateSingleValue(model: model, oldKey: oldKey));
  }

  @override
  Future<Either<StorageFailure, bool>> isOnboardCompleted() =>
      _service.isOnboardCompleted();

  @override
  Future<Either<StorageFailure, Unit>> completeOnboard() =>
      _service.completeOnboard();
}
