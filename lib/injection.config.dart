// GENERATED CODE - DO NOT MODIFY BY HAND
// Manual update: Lock + Authenticator registrations (build_runner unavailable).

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/authenticatorBloc/authenticator_bloc.dart' as _i14;
import 'application/homeActionBloc/home_action_bloc.dart' as _i10;
import 'application/homeBloc/home_bloc.dart' as _i11;
import 'application/lockBloc/lock_bloc.dart' as _i8;
import 'application/onboardBloc/onboard_bloc.dart' as _i9;
import 'application/passActionBloc/pass_action_bloc.dart' as _i12;
import 'domain/i_authenticator_repository.dart' as _i15;
import 'domain/i_keys_repository.dart' as _i4;
import 'domain/i_lock_repository.dart' as _i6;
import 'infrastructure/authenticator/authenticator_repository.dart' as _i16;
import 'infrastructure/authenticator/authenticator_service.dart' as _i17;
import 'infrastructure/keys/keys_repository.dart' as _i5;
import 'infrastructure/keys/keys_service.dart' as _i3;
import 'infrastructure/lock/lock_repository.dart' as _i7;
import 'infrastructure/lock/lock_service.dart' as _i13;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.KeysService>(() => _i3.KeysService());
  gh.lazySingleton<_i4.IKeysRepository>(
      () => _i5.KeysRepository(gh<_i3.KeysService>()));
  gh.lazySingleton<_i13.LockService>(
      () => _i13.LockService(gh<_i3.KeysService>()));
  gh.lazySingleton<_i6.ILockRepository>(
      () => _i7.LockRepository(gh<_i13.LockService>()));
  gh.lazySingleton<_i17.AuthenticatorService>(
      () => _i17.AuthenticatorService(gh<_i3.KeysService>()));
  gh.lazySingleton<_i15.IAuthenticatorRepository>(
      () => _i16.AuthenticatorRepository(gh<_i17.AuthenticatorService>()));
  gh.factory<_i9.OnboardBloc>(() => _i9.OnboardBloc(gh<_i4.IKeysRepository>()));
  gh.factory<_i12.PassActionBloc>(
      () => _i12.PassActionBloc(gh<_i4.IKeysRepository>()));
  gh.factory<_i10.HomeActionBloc>(
      () => _i10.HomeActionBloc(gh<_i4.IKeysRepository>()));
  gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(gh<_i4.IKeysRepository>()));
  gh.factory<_i8.LockBloc>(() => _i8.LockBloc(gh<_i6.ILockRepository>()));
  gh.factory<_i14.AuthenticatorBloc>(
      () => _i14.AuthenticatorBloc(gh<_i15.IAuthenticatorRepository>()));
  return getIt;
}
