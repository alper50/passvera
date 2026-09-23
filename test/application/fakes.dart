import 'package:dartz/dartz.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/clipboard_failures.dart';
import 'package:passvera/domain/errors/lock_failures.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
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
