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

import 'application/homeActionBloc/home_action_bloc.dart' as _i8;
import 'application/homeBloc/home_bloc.dart' as _i9;
import 'application/onboardBloc/onboard_bloc.dart' as _i4;
import 'application/passActionBloc/pass_action_bloc.dart' as _i7;
import 'domain/i_keys_repository.dart' as _i5;
import 'infrastructure/keys/keys_repository.dart' as _i6;
import 'infrastructure/keys/keys_service.dart' as _i3;

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
  gh.lazySingleton<_i3.KeysService>(() => _i3.KeysService());
  gh.factory<_i4.OnboardBloc>(() => _i4.OnboardBloc());
  gh.lazySingleton<_i5.IKeysRepository>(
      () => _i6.KeysRepository(gh<_i3.KeysService>()));
  gh.factory<_i7.PassActionBloc>(
      () => _i7.PassActionBloc(gh<_i5.IKeysRepository>()));
  gh.factory<_i8.HomeActionBloc>(
      () => _i8.HomeActionBloc(gh<_i5.IKeysRepository>()));
  gh.factory<_i9.HomeBloc>(() => _i9.HomeBloc(gh<_i5.IKeysRepository>()));
  return getIt;
}
