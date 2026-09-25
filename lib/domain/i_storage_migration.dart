import 'package:dartz/dartz.dart';
import 'package:passvera/domain/errors/storage_failures.dart';

/// Brings on-device storage to the current layout. Runs at startup, before
/// anything reads the vault; safe to run repeatedly and to resume after a
/// crash.
abstract class IStorageMigration {
  Future<Either<StorageFailure, Unit>> migrate();
}
