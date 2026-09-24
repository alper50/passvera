import 'package:dartz/dartz.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';

abstract class IAuthenticatorRepository {
  Future<Either<AuthenticatorFailure, List<AuthenticatorEntry>>> getAll();

  Future<Either<AuthenticatorFailure, Unit>> addFromOtpAuthUri(String uri);

  Future<Either<AuthenticatorFailure, Unit>> delete({required String id});

  /// Saves [entries], skipping ids that already exist. Right = number added.
  Future<Either<AuthenticatorFailure, int>> addEntries(
    List<AuthenticatorEntry> entries,
  );
}
