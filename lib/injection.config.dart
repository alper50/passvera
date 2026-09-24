// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/authenticatorBloc/authenticator_bloc.dart' as _i20;
import 'application/authenticatorImportBloc/authenticator_import_bloc.dart'
    as _i21;
import 'application/clipboardBloc/clipboard_bloc.dart' as _i9;
import 'application/homeActionBloc/home_action_bloc.dart' as _i22;
import 'application/homeBloc/home_bloc.dart' as _i23;
import 'application/lockBloc/lock_bloc.dart' as _i16;
import 'application/onboardBloc/onboard_bloc.dart' as _i17;
import 'application/passActionBloc/pass_action_bloc.dart' as _i18;
import 'application/sessionBloc/session_bloc.dart' as _i19;
import 'domain/i_authenticator_repository.dart' as _i10;
import 'domain/i_clipboard_repository.dart' as _i4;
import 'domain/i_keys_repository.dart' as _i12;
import 'domain/i_lock_repository.dart' as _i14;
import 'infrastructure/authenticator/authenticator_repository.dart' as _i11;
import 'infrastructure/authenticator/authenticator_service.dart' as _i8;
import 'infrastructure/clipboard/clipboard_repository.dart' as _i5;
import 'infrastructure/clipboard/clipboard_service.dart' as _i3;
import 'infrastructure/keys/keys_repository.dart' as _i13;
import 'infrastructure/keys/keys_service.dart' as _i6;
import 'infrastructure/lock/lock_repository.dart' as _i15;
import 'infrastructure/lock/lock_service.dart' as _i7;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
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
  gh.lazySingleton<_i3.ClipboardService>(() => _i3.ClipboardService());
  gh.lazySingleton<_i4.IClipboardRepository>(
      () => _i5.ClipboardRepository(gh<_i3.ClipboardService>()));
  gh.lazySingleton<_i6.KeysService>(() => _i6.KeysService());
  gh.lazySingleton<_i7.LockService>(
      () => _i7.LockService(gh<_i6.KeysService>()));
  gh.lazySingleton<_i8.AuthenticatorService>(
      () => _i8.AuthenticatorService(gh<_i6.KeysService>()));
  gh.factory<_i9.ClipboardBloc>(
      () => _i9.ClipboardBloc(gh<_i4.IClipboardRepository>()));
  gh.lazySingleton<_i10.IAuthenticatorRepository>(
      () => _i11.AuthenticatorRepository(gh<_i8.AuthenticatorService>()));
  gh.lazySingleton<_i12.IKeysRepository>(
      () => _i13.KeysRepository(gh<_i6.KeysService>()));
  gh.lazySingleton<_i14.ILockRepository>(
      () => _i15.LockRepository(gh<_i7.LockService>()));
  gh.factory<_i16.LockBloc>(() => _i16.LockBloc(gh<_i14.ILockRepository>()));
  gh.factory<_i17.OnboardBloc>(
      () => _i17.OnboardBloc(gh<_i12.IKeysRepository>()));
  gh.factory<_i18.PassActionBloc>(
      () => _i18.PassActionBloc(gh<_i12.IKeysRepository>()));
  gh.factory<_i19.SessionBloc>(
      () => _i19.SessionBloc(gh<_i14.ILockRepository>()));
  gh.factory<_i20.AuthenticatorBloc>(
      () => _i20.AuthenticatorBloc(gh<_i10.IAuthenticatorRepository>()));
  gh.factory<_i21.AuthenticatorImportBloc>(
      () => _i21.AuthenticatorImportBloc(gh<_i10.IAuthenticatorRepository>()));
  gh.factory<_i22.HomeActionBloc>(
      () => _i22.HomeActionBloc(gh<_i12.IKeysRepository>()));
  gh.factory<_i23.HomeBloc>(() => _i23.HomeBloc(gh<_i12.IKeysRepository>()));
  return getIt;
}
