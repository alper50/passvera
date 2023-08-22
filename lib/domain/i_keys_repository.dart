import 'package:dartz/dartz.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';

abstract class IKeysRepository {
  Future<Either<StorageFailure,Unit>> encryptValue({required ApplicationModel appModel});
  Future<Either<StorageFailure, List<ApplicationModel>>> getAllValues();
  Future<Either<StorageFailure, Unit>> deleteValue({required String appKey});
  Future<Either<StorageFailure, Unit>> updateSingleValue({required ApplicationModel model});
}
