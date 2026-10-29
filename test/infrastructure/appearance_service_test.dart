import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/domain/appearance_mode.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/infrastructure/appearance/appearance_service.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';
import 'package:passvera/infrastructure/keys/storage_keys.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late KeysService keys;
  late AppearanceService service;

  void seed(Map<String, String> values) {
    FlutterSecureStorage.setMockInitialValues(values);
    keys = KeysService();
    service = AppearanceService(keys);
  }

  Future<AppearanceMode> read() async =>
      (await service.getMode()).getOrElse(() => throw StateError('read'));

  test('follows the system until the user picks a mode', () async {
    seed({});
    expect(await read(), AppearanceMode.system);
  });

  test('a picked mode survives a restart', () async {
    seed({});
    expect(await service.saveMode(AppearanceMode.dark),
        const Right<StorageFailure, Unit>(unit));

    service = AppearanceService(KeysService());
    expect(await read(), AppearanceMode.dark);
  });

  test('going back to system removes the stored value', () async {
    seed({StorageKeys.appearance: 'light'});
    await service.saveMode(AppearanceMode.system);

    expect(
        await keys.storage.containsKey(key: StorageKeys.appearance), isFalse);
    expect(await read(), AppearanceMode.system);
  });

  test('an unknown stored value falls back to system', () async {
    seed({StorageKeys.appearance: 'sepia'});
    expect(await read(), AppearanceMode.system);
  });
}
