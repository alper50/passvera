import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/domain/i_authenticator_repository.dart';
import 'package:passvera/infrastructure/authenticator/authenticator_service.dart';

@LazySingleton(as: IAuthenticatorRepository)
class AuthenticatorRepository implements IAuthenticatorRepository {
  AuthenticatorRepository(this._service);

  final AuthenticatorService _service;

  @override
  Future<Either<AuthenticatorFailure, List<AuthenticatorEntry>>> getAll() {
    return _service.getAll();
  }

  @override
  Future<Either<AuthenticatorFailure, Unit>> addFromOtpAuthUri(String uri) {
    return _service.addFromOtpAuthUri(uri);
  }

  @override
  Future<Either<AuthenticatorFailure, Unit>> delete({required String id}) {
    return _service.delete(id: id);
  }
}
