import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/appearance_mode.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_appearance_repository.dart';
import 'package:passvera/infrastructure/appearance/appearance_service.dart';

/// Unlike the vault repositories this does not notify VaultChangeNotifier:
/// the preference is not backed up, so changing it must not trigger an
/// upload.
@LazySingleton(as: IAppearanceRepository)
class AppearanceRepository implements IAppearanceRepository {
  AppearanceRepository(this._service);

  final AppearanceService _service;

  @override
  Future<Either<StorageFailure, AppearanceMode>> getMode() =>
      _service.getMode();

  @override
  Future<Either<StorageFailure, Unit>> saveMode(AppearanceMode mode) =>
      _service.saveMode(mode);
}
