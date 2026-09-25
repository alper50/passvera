import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';
import 'package:passvera/infrastructure/keys/storage_keys.dart';
import 'package:passvera/infrastructure/keys/storage_migration.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late KeysService keys;
  late StorageMigration migration;

  Future<Map<String, String>> run(Map<String, String> initial) async {
    FlutterSecureStorage.setMockInitialValues(initial);
    keys = KeysService();
    migration = StorageMigration(keys);
    final result = await migration.migrate();
    expect(result.isRight(), isTrue, reason: '$result');
    return keys.storage.readAll();
  }

  String journal(Map<String, String> entries) =>
      jsonEncode({'v': 2, 'entries': entries});

  const schemaDone = {StorageKeys.schema: StorageKeys.currentSchema};

  test('moves schema-1 keys into namespaces and removes the originals',
      () async {
    final after = await run({
      'Gmail': 'gmail-json',
      'Bank': 'bank-json',
      'onboard': 'true',
      'app_pin_hash': 'hash',
      'app_pin_salt': 'salt',
      'app_pin_attempts': '2',
      'app_pin_lockout_until': '123',
      'totp:github%7Cme': 'totp-json',
    });

    expect(after, {
      'pw:Gmail': 'gmail-json',
      'pw:Bank': 'bank-json',
      'meta:onboard': 'true',
      'meta:app_pin_hash': 'hash',
      'meta:app_pin_salt': 'salt',
      'meta:app_pin_attempts': '2',
      'meta:app_pin_lockout_until': '123',
      'totp:github%7Cme': 'totp-json',
      ...schemaDone,
    });
  });

  test('is a no-op once migrated', () async {
    final first = await run({'Gmail': 'g', 'onboard': 'true'});
    final second = await migration.migrate();

    expect(second.isRight(), isTrue);
    expect(await keys.storage.readAll(), first);
  });

  test('a fresh install only gets the schema marker', () async {
    expect(await run({}), schemaDone);
  });

  test('legacy passwords named like schema-2 keys stay passwords', () async {
    final after = await run({
      'x': 'x-json',
      'pw:x': 'pw-x-json',
      'meta:onboard': 'meta-onboard-json',
      StorageKeys.schema: 'schema-lookalike-json',
      StorageKeys.migrationJournal: 'journal-lookalike-json',
      'onboard': 'true',
    });

    expect(after, {
      'pw:x': 'x-json',
      'pw:pw:x': 'pw-x-json',
      'pw:meta:onboard': 'meta-onboard-json',
      'pw:${StorageKeys.schema}': 'schema-lookalike-json',
      'pw:${StorageKeys.migrationJournal}': 'journal-lookalike-json',
      'meta:onboard': 'true',
      ...schemaDone,
    });
  });

  test('resumes from the journal after a crash before the marker', () async {
    // Crash state: journal written, some copies made, and the legacy
    // password "meta:onboard" already overwritten by the onboard flag.
    final legacy = {
      'Gmail': 'gmail-json',
      'onboard': 'true',
      'meta:onboard': 'user-password-json',
    };
    final after = await run({
      ...legacy,
      StorageKeys.migrationJournal: journal(legacy),
      'pw:Gmail': 'gmail-json',
      'meta:onboard': 'true',
    });

    expect(after, {
      'pw:Gmail': 'gmail-json',
      'pw:meta:onboard': 'user-password-json',
      'meta:onboard': 'true',
      ...schemaDone,
    });
  });

  test('finishes the cleanup after a crash after the marker', () async {
    final legacy = {'Gmail': 'gmail-json', 'onboard': 'true'};
    final after = await run({
      ...legacy,
      StorageKeys.migrationJournal: journal(legacy),
      'pw:Gmail': 'gmail-json',
      'meta:onboard': 'true',
      ...schemaDone,
    });

    expect(after, {
      'pw:Gmail': 'gmail-json',
      'meta:onboard': 'true',
      ...schemaDone,
    });
  });
}
