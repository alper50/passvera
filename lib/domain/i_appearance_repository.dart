import 'package:dartz/dartz.dart';
import 'package:passvera/domain/appearance_mode.dart';
import 'package:passvera/domain/errors/storage_failures.dart';

abstract class IAppearanceRepository {
  Future<Either<StorageFailure, AppearanceMode>> getMode();
  Future<Either<StorageFailure, Unit>> saveMode(AppearanceMode mode);
}
