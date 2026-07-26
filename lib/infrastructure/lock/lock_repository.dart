import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/errors/lock_failures.dart';
import 'package:passvera/domain/i_lock_repository.dart';
import 'package:passvera/infrastructure/lock/lock_service.dart';

@LazySingleton(as: ILockRepository)
class LockRepository implements ILockRepository {
  final LockService _service;

  LockRepository(this._service);

  @override
  Future<Either<LockFailure, bool>> isPinSet() {
    return _service.isPinSet();
  }

  @override
  Future<Either<LockFailure, int>> getLockoutRemainingSeconds() {
    return _service.getLockoutRemainingSeconds();
  }

  @override
  Future<Either<LockFailure, Unit>> verifyPin({required String pin}) {
    return _service.verifyPin(pin: pin);
  }

  @override
  Future<Either<LockFailure, Unit>> setPin({required String pin}) {
    return _service.setPin(pin: pin);
  }

  @override
  Future<Either<LockFailure, Unit>> updatePin({
    required String currentPin,
    required String newPin,
  }) {
    return _service.updatePin(currentPin: currentPin, newPin: newPin);
  }

  @override
  Future<Either<LockFailure, Unit>> removePin({required String currentPin}) {
    return _service.removePin(currentPin: currentPin);
  }
}
