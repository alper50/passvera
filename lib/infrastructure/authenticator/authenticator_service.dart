import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/domain/otp_auth_parser.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';

@LazySingleton()
class AuthenticatorService {
  AuthenticatorService(this._keysService);

  final KeysService _keysService;

  FlutterSecureStorage get _storage => _keysService.storage;

  Future<Either<AuthenticatorFailure, List<AuthenticatorEntry>>> getAll() async {
    try {
      final result = await _storage.readAll();
      final entries = <AuthenticatorEntry>[];
      result.forEach((key, value) {
        if (!key.startsWith(OtpAuthParser.storagePrefix)) return;
        try {
          entries.add(AuthenticatorEntry.fromStorage(id: key, raw: value));
        } catch (_) {
          // Skip corrupt entries.
        }
      });
      entries.sort((a, b) {
        final issuerCmp =
            a.issuer.toLowerCase().compareTo(b.issuer.toLowerCase());
        if (issuerCmp != 0) return issuerCmp;
        return a.account.toLowerCase().compareTo(b.account.toLowerCase());
      });
      return Right(entries);
    } catch (e) {
      return Left(AuthenticatorFailure.unexpected(e));
    }
  }

  Future<Either<AuthenticatorFailure, Unit>> addFromOtpAuthUri(
    String uri,
  ) async {
    final parsed = OtpAuthParser.parse(uri);
    return parsed.fold(
      (failure) async => Left(failure),
      (entry) async {
        try {
          final existing = await _storage.read(key: entry.id);
          if (existing != null) {
            return const Left(AuthenticatorFailure.keyAlreadyUsed());
          }
          await _storage.write(
            key: entry.id,
            value: entry.toStorageValue(),
          );
          return const Right(unit);
        } catch (e) {
          return Left(AuthenticatorFailure.unexpected(e));
        }
      },
    );
  }

  Future<Either<AuthenticatorFailure, Unit>> delete({
    required String id,
  }) async {
    try {
      if (!id.startsWith(OtpAuthParser.storagePrefix)) {
        return const Left(AuthenticatorFailure.invalidQr());
      }
      await _storage.delete(key: id);
      return const Right(unit);
    } catch (e) {
      return Left(AuthenticatorFailure.unexpected(e));
    }
  }
}
