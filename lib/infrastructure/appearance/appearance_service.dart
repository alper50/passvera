import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/appearance_mode.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';
import 'package:passvera/infrastructure/keys/storage_keys.dart';

/// Light/dark preference next to the other app metadata. Backups only carry
/// vault entries and the tag order, so this stays on the device.
@LazySingleton()
class AppearanceService {
  AppearanceService(this._keysService);

  final KeysService _keysService;

  Future<Either<StorageFailure, AppearanceMode>> getMode() async {
    try {
      final raw = await _keysService.storage.read(key: StorageKeys.appearance);
      return Right(AppearanceMode.fromStorage(raw));
    } catch (e) {
      return Left(StorageFailure.unexpected(e));
    }
  }

  Future<Either<StorageFailure, Unit>> saveMode(AppearanceMode mode) async {
    try {
      final value = mode.storageValue;
      if (value == null) {
        await _keysService.storage.delete(key: StorageKeys.appearance);
      } else {
        await _keysService.storage.write(
          key: StorageKeys.appearance,
          value: value,
        );
      }
      return const Right(unit);
    } catch (e) {
      return Left(StorageFailure.unexpected(e));
    }
  }
}
