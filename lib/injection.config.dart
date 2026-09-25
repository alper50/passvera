// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'application/authenticatorBloc/authenticator_bloc.dart' as _i836;
import 'application/authenticatorImportBloc/authenticator_import_bloc.dart'
    as _i380;
import 'application/backupSettingsBloc/backup_settings_bloc.dart' as _i189;
import 'application/backupSyncBloc/backup_sync_bloc.dart' as _i178;
import 'application/clipboardBloc/clipboard_bloc.dart' as _i1011;
import 'application/homeActionBloc/home_action_bloc.dart' as _i380;
import 'application/homeBloc/home_bloc.dart' as _i866;
import 'application/lockBloc/lock_bloc.dart' as _i280;
import 'application/onboardBloc/onboard_bloc.dart' as _i190;
import 'application/passActionBloc/pass_action_bloc.dart' as _i311;
import 'application/restoreBloc/restore_bloc.dart' as _i78;
import 'application/sessionBloc/session_bloc.dart' as _i931;
import 'domain/backup/i_backup_repository.dart' as _i260;
import 'domain/backup/i_vault_changes.dart' as _i78;
import 'domain/i_authenticator_repository.dart' as _i882;
import 'domain/i_clipboard_repository.dart' as _i625;
import 'domain/i_keys_repository.dart' as _i284;
import 'domain/i_lock_repository.dart' as _i760;
import 'domain/i_storage_migration.dart' as _i95;
import 'infrastructure/authenticator/authenticator_repository.dart' as _i523;
import 'infrastructure/authenticator/authenticator_service.dart' as _i64;
import 'infrastructure/backup/backup_codec.dart' as _i264;
import 'infrastructure/backup/backup_remote.dart' as _i325;
import 'infrastructure/backup/backup_repository.dart' as _i891;
import 'infrastructure/backup/backup_service.dart' as _i922;
import 'infrastructure/backup/google_drive_backup_remote.dart' as _i307;
import 'infrastructure/backup/vault_change_notifier.dart' as _i886;
import 'infrastructure/clipboard/clipboard_repository.dart' as _i759;
import 'infrastructure/clipboard/clipboard_service.dart' as _i580;
import 'infrastructure/keys/keys_repository.dart' as _i760;
import 'infrastructure/keys/keys_service.dart' as _i1;
import 'infrastructure/keys/storage_migration.dart' as _i435;
import 'infrastructure/lock/lock_repository.dart' as _i701;
import 'infrastructure/lock/lock_service.dart' as _i214;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final vaultChangesModule = _$VaultChangesModule();
  gh.lazySingleton<_i264.BackupCodec>(() => _i264.BackupCodec());
  gh.lazySingleton<_i886.VaultChangeNotifier>(
      () => _i886.VaultChangeNotifier());
  gh.lazySingleton<_i580.ClipboardService>(() => _i580.ClipboardService());
  gh.lazySingleton<_i1.KeysService>(() => _i1.KeysService());
  gh.lazySingleton<_i284.IKeysRepository>(() => _i760.KeysRepository(
        gh<_i1.KeysService>(),
        gh<_i886.VaultChangeNotifier>(),
      ));
  gh.factory<_i380.HomeActionBloc>(
      () => _i380.HomeActionBloc(gh<_i284.IKeysRepository>()));
  gh.factory<_i866.HomeBloc>(() => _i866.HomeBloc(gh<_i284.IKeysRepository>()));
  gh.lazySingleton<_i325.BackupRemote>(() => _i307.GoogleDriveBackupRemote());
  gh.lazySingleton<_i64.AuthenticatorService>(
      () => _i64.AuthenticatorService(gh<_i1.KeysService>()));
  gh.lazySingleton<_i214.LockService>(
      () => _i214.LockService(gh<_i1.KeysService>()));
  gh.lazySingleton<_i760.ILockRepository>(
      () => _i701.LockRepository(gh<_i214.LockService>()));
  gh.lazySingleton<_i78.IVaultChanges>(
      () => vaultChangesModule.vaultChanges(gh<_i886.VaultChangeNotifier>()));
  gh.lazySingleton<_i922.BackupService>(() => _i922.BackupService(
        gh<_i1.KeysService>(),
        gh<_i64.AuthenticatorService>(),
        gh<_i264.BackupCodec>(),
        gh<_i325.BackupRemote>(),
      ));
  gh.lazySingleton<_i95.IStorageMigration>(
      () => _i435.StorageMigration(gh<_i1.KeysService>()));
  gh.factory<_i311.PassActionBloc>(
      () => _i311.PassActionBloc(gh<_i284.IKeysRepository>()));
  gh.factory<_i190.OnboardBloc>(
      () => _i190.OnboardBloc(gh<_i284.IKeysRepository>()));
  gh.lazySingleton<_i625.IClipboardRepository>(
      () => _i759.ClipboardRepository(gh<_i580.ClipboardService>()));
  gh.lazySingleton<_i260.IBackupRepository>(
      () => _i891.BackupRepository(gh<_i922.BackupService>()));
  gh.factory<_i1011.ClipboardBloc>(
      () => _i1011.ClipboardBloc(gh<_i625.IClipboardRepository>()));
  gh.factory<_i178.BackupSyncBloc>(() => _i178.BackupSyncBloc(
        gh<_i260.IBackupRepository>(),
        gh<_i78.IVaultChanges>(),
      ));
  gh.lazySingleton<_i882.IAuthenticatorRepository>(
      () => _i523.AuthenticatorRepository(
            gh<_i64.AuthenticatorService>(),
            gh<_i886.VaultChangeNotifier>(),
          ));
  gh.factory<_i280.LockBloc>(() => _i280.LockBloc(gh<_i760.ILockRepository>()));
  gh.factory<_i931.SessionBloc>(
      () => _i931.SessionBloc(gh<_i760.ILockRepository>()));
  gh.factory<_i78.RestoreBloc>(() => _i78.RestoreBloc(
        gh<_i260.IBackupRepository>(),
        gh<_i284.IKeysRepository>(),
        gh<_i882.IAuthenticatorRepository>(),
      ));
  gh.factory<_i836.AuthenticatorBloc>(
      () => _i836.AuthenticatorBloc(gh<_i882.IAuthenticatorRepository>()));
  gh.factory<_i380.AuthenticatorImportBloc>(() =>
      _i380.AuthenticatorImportBloc(gh<_i882.IAuthenticatorRepository>()));
  gh.factory<_i189.BackupSettingsBloc>(() => _i189.BackupSettingsBloc(
        gh<_i260.IBackupRepository>(),
        gh<_i760.ILockRepository>(),
      ));
  return getIt;
}

class _$VaultChangesModule extends _i886.VaultChangesModule {}
