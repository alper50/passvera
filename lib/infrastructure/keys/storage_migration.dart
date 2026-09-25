import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_storage_migration.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';
import 'package:passvera/infrastructure/keys/storage_keys.dart';

/// Schema 1 -> 2: legacy keys were bare (password names and a few app keys
/// side by side); schema 2 namespaces them (see [StorageKeys]).
///
/// Crash safety: the legacy entries are first snapshotted into a journal in
/// one write, every copy is made from that snapshot, the schema marker is
/// written, and only then are legacy keys removed. Re-running at any point
/// converges to the same result.
@LazySingleton(as: IStorageMigration)
class StorageMigration implements IStorageMigration {
  StorageMigration(this._keysService);

  final KeysService _keysService;

  FlutterSecureStorage get _storage => _keysService.storage;

  /// App keys of schema 1; every other bare key was a password entry.
  static const Set<String> legacyMetaKeys = {
    'onboard',
    'app_pin_hash',
    'app_pin_salt',
    'app_pin_attempts',
    'app_pin_lockout_until',
  };

  static const int _journalVersion = 2;

  @override
  Future<Either<StorageFailure, Unit>> migrate() async {
    try {
      final all = await _storage.readAll();
      final journal = _decodeJournal(all[StorageKeys.migrationJournal]);

      if (all[StorageKeys.schema] == StorageKeys.currentSchema) {
        // Crashed after the marker: only the cleanup is left.
        if (journal != null) await _removeLegacy(journal);
        return const Right(unit);
      }

      final snapshot = journal ?? _legacyEntries(all);
      if (journal == null && snapshot.isNotEmpty) {
        await _storage.write(
          key: StorageKeys.migrationJournal,
          value: jsonEncode({'v': _journalVersion, 'entries': snapshot}),
        );
      }
      for (final entry in snapshot.entries) {
        await _storage.write(key: targetKey(entry.key), value: entry.value);
      }
      await _storage.write(
        key: StorageKeys.schema,
        value: StorageKeys.currentSchema,
      );
      await _removeLegacy(snapshot);
      return const Right(unit);
    } catch (e) {
      return Left(StorageFailure.unexpected(e));
    }
  }

  /// Schema-2 key for a schema-1 key.
  static String targetKey(String legacyKey) =>
      legacyMetaKeys.contains(legacyKey)
          ? '${StorageKeys.metaPrefix}$legacyKey'
          : StorageKeys.password(legacyKey);

  /// Schema 1 had no namespaces except `totp:`, so every other key is legacy,
  /// even ones that happen to look like schema-2 keys.
  Map<String, String> _legacyEntries(Map<String, String> all) => {
        for (final e in all.entries)
          if (!e.key.startsWith(StorageKeys.totpPrefix)) e.key: e.value,
      };

  Future<void> _removeLegacy(Map<String, String> snapshot) async {
    final targets = snapshot.keys.map(targetKey).toSet();
    for (final legacyKey in snapshot.keys) {
      // A legacy entry named like a schema-2 key (e.g. a password called
      // "meta:onboard") now holds migrated data: keep it.
      // The marker and the journal (always deleted last) are bookkeeping.
      if (targets.contains(legacyKey) ||
          legacyKey == StorageKeys.schema ||
          legacyKey == StorageKeys.migrationJournal) {
        continue;
      }
      await _storage.delete(key: legacyKey);
    }
    await _storage.delete(key: StorageKeys.migrationJournal);
  }

  /// A legacy password could be named like the journal key; only accept a
  /// value in the journal's own shape.
  Map<String, String>? _decodeJournal(String? raw) {
    if (raw == null) return null;
    try {
      final decoded = jsonDecode(raw);
      if (decoded is Map &&
          decoded['v'] == _journalVersion &&
          decoded['entries'] is Map) {
        return (decoded['entries'] as Map)
            .map((k, v) => MapEntry(k as String, v as String));
      }
    } catch (_) {}
    return null;
  }
}
