import 'package:dartz/dartz.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';

abstract class IKeysRepository {
  Future<Either<StorageFailure, Unit>> encryptValue(
      {required ApplicationModel appModel});
  Future<Either<StorageFailure, List<ApplicationModel>>> getAllValues();
  Future<Either<StorageFailure, Unit>> deleteValue({required String appKey});
  Future<Either<StorageFailure, Unit>> updateSingleValue(
      {required ApplicationModel model, required String oldKey});

  /// Saved tag order (see TagOrder); empty when the user never reordered.
  Future<Either<StorageFailure, List<String>>> getTagOrder();

  /// Replaces the saved tag order; an empty list clears it.
  Future<Either<StorageFailure, Unit>> saveTagOrder(List<String> tags);
  Future<Either<StorageFailure, bool>> isOnboardCompleted();
  Future<Either<StorageFailure, Unit>> completeOnboard();
}
