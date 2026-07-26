import 'package:dartz/dartz.dart';
import 'package:passvera/domain/errors/lock_failures.dart';

abstract class ILockRepository {
  Future<Either<LockFailure, bool>> isPinSet();
  Future<Either<LockFailure, int>> getLockoutRemainingSeconds();
  Future<Either<LockFailure, Unit>> verifyPin({required String pin});
  Future<Either<LockFailure, Unit>> setPin({required String pin});
  Future<Either<LockFailure, Unit>> updatePin({
    required String currentPin,
    required String newPin,
  });
  Future<Either<LockFailure, Unit>> removePin({required String currentPin});
}
