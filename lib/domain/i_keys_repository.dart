import 'package:dartz/dartz.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';

abstract class IKeysRepository {
  Future<bool> encryptValue({required ApplicationModel appModel});
  Future<Either<StorageFailure, List<ApplicationModel>>> getAllValues();
}
