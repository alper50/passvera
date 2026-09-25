import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';
import 'package:passvera/infrastructure/keys/storage_keys.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late KeysService service;

  const gmail = ApplicationModel(key: 'Gmail', value: 'gmail-pass');
  const twitter = ApplicationModel(key: 'Twitter', value: 'twitter-pass');

  Future<void> seed(List<ApplicationModel> models) async {
    FlutterSecureStorage.setMockInitialValues({
      for (final m in models) StorageKeys.password(m.key): m.toStorageValue(),
    });
    service = KeysService();
  }

  Future<String?> read(String name) =>
      service.storage.read(key: StorageKeys.password(name));

  group('updateSingleValue', () {
    test('rejects renaming onto an existing key and keeps both entries',
        () async {
      await seed([gmail, twitter]);

      final result = await service.updateSingleValue(
        model: gmail.copyWith(key: 'Twitter'),
        oldKey: 'Gmail',
      );

      expect(result, const Left(StorageFailure.keyAlreadyUsed()));
      expect(await read('Gmail'), gmail.toStorageValue());
      expect(await read('Twitter'), twitter.toStorageValue());
    });

    test('renames to a free key and removes the old one', () async {
      await seed([gmail]);

      final result = await service.updateSingleValue(
        model: gmail.copyWith(key: 'Google'),
        oldKey: 'Gmail',
      );

      expect(result, const Right(unit));
      expect(await read('Gmail'), isNull);
      expect(
          await read('Google'), gmail.copyWith(key: 'Google').toStorageValue());
    });

    test('overwrites in place when the key is unchanged', () async {
      await seed([gmail]);
      final edited = gmail.copyWith(value: 'new-pass', tag: 'Work');

      final result =
          await service.updateSingleValue(model: edited, oldKey: 'Gmail');

      expect(result, const Right(unit));
      expect(await read('Gmail'), edited.toStorageValue());
    });

    test('fails when the original entry does not exist', () async {
      await seed([]);

      final result =
          await service.updateSingleValue(model: gmail, oldKey: 'Gmail');

      expect(result, const Left(StorageFailure.emptyKey()));
      expect(await read('Gmail'), isNull);
    });
  });
}
