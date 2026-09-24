import 'package:dartz/dartz.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/domain/errors/clipboard_failures.dart';
import 'package:passvera/domain/errors/lock_failures.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_authenticator_repository.dart';
import 'package:passvera/domain/i_clipboard_repository.dart';
import 'package:passvera/domain/i_keys_repository.dart';
import 'package:passvera/domain/i_lock_repository.dart';

class FakeLockRepository implements ILockRepository {
  FakeLockRepository(this.isPinSetResult);

  final Either<LockFailure, bool> isPinSetResult;

  @override
  Future<Either<LockFailure, bool>> isPinSet() async => isPinSetResult;

  @override
  dynamic noSuchMethod(Invocation invocation) =>
      throw UnimplementedError(invocation.memberName.toString());
}

class FakeKeysRepository implements IKeysRepository {
  final updateCalls = <ApplicationModel>[];
  Either<StorageFailure, Unit> updateResult = const Right(unit);
  List<ApplicationModel> storedValues = const [];

  @override
  Future<Either<StorageFailure, List<ApplicationModel>>> getAllValues() async =>
      Right(storedValues);

  @override
  Future<Either<StorageFailure, Unit>> updateSingleValue({
    required ApplicationModel model,
    required String oldKey,
  }) async {
    updateCalls.add(model);
    return updateResult;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) =>
      throw UnimplementedError(invocation.memberName.toString());
}

class FakeClipboardRepository implements IClipboardRepository {
  final copied = <String>[];
  final ttls = <Duration>[];

  @override
  Future<Either<ClipboardFailure, Unit>> copySensitive({
    required String text,
    required Duration clearAfter,
  }) async {
    copied.add(text);
    ttls.add(clearAfter);
    return const Right(unit);
  }
}

class FakeAuthenticatorRepository implements IAuthenticatorRepository {
  FakeAuthenticatorRepository(this.existing);

  final List<AuthenticatorEntry> existing;
  final saved = <AuthenticatorEntry>[];

  @override
  Future<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
      getAll() async => Right(existing);

  @override
  Future<Either<AuthenticatorFailure, int>> addEntries(
    List<AuthenticatorEntry> entries,
  ) async {
    saved.addAll(entries);
    return Right(entries.length);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) =>
      throw UnimplementedError(invocation.memberName.toString());
}
