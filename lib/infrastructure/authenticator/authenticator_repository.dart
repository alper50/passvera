import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/domain/i_authenticator_repository.dart';
import 'package:passvera/infrastructure/authenticator/authenticator_service.dart';
import 'package:passvera/infrastructure/backup/vault_change_notifier.dart';

@LazySingleton(as: IAuthenticatorRepository)
class AuthenticatorRepository implements IAuthenticatorRepository {
  AuthenticatorRepository(this._service, this._changes);

  final AuthenticatorService _service;
  final VaultChangeNotifier _changes;

  /// Announces successful writes (drives the automatic Drive backup).
  Future<Either<AuthenticatorFailure, T>> _notifying<T>(
    Future<Either<AuthenticatorFailure, T>> write,
  ) async {
    final result = await write;
    if (result.isRight()) _changes.notify();
    return result;
  }

  @override
  Future<Either<AuthenticatorFailure, List<AuthenticatorEntry>>> getAll() {
    return _service.getAll();
  }

  @override
  Future<Either<AuthenticatorFailure, Unit>> addFromOtpAuthUri(String uri) {
    return _notifying(_service.addFromOtpAuthUri(uri));
  }

  @override
  Future<Either<AuthenticatorFailure, int>> addEntries(
    List<AuthenticatorEntry> entries,
  ) {
    return _notifying(_service.addEntries(entries));
  }

  @override
  Future<Either<AuthenticatorFailure, Unit>> delete({required String id}) {
    return _notifying(_service.delete(id: id));
  }
}
