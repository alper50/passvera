import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/authenticatorBloc/authenticator_bloc.dart';
import 'package:passvera/application/authenticatorImportBloc/authenticator_import_bloc.dart';
import 'package:passvera/application/backupSyncBloc/backup_sync_bloc.dart';
import 'package:passvera/application/clipboardBloc/clipboard_bloc.dart';
import 'package:passvera/application/homeActionBloc/home_action_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/application/lockBloc/lock_bloc.dart';
import 'package:passvera/application/onboardBloc/onboard_bloc.dart';
import 'package:passvera/application/passActionBloc/pass_action_bloc.dart';
import 'package:passvera/application/sessionBloc/session_bloc.dart';
import 'package:passvera/domain/backup/i_backup_repository.dart';
import 'package:passvera/domain/backup/i_vault_changes.dart';
import 'package:passvera/domain/i_storage_migration.dart';
import 'package:passvera/infrastructure/backup/vault_change_notifier.dart';
import 'package:passvera/injection.dart';

/// Every dependency the app resolves at runtime must be constructible;
/// analyze and unit tests with fakes do not catch a missing registration.
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(configureDependencies);

  test('all app-level types resolve', () {
    getIt<IStorageMigration>();
    getIt<IBackupRepository>();
    getIt<AuthenticatorBloc>();
    getIt<BackupSyncBloc>();
    getIt<AuthenticatorImportBloc>();
    getIt<ClipboardBloc>();
    getIt<HomeActionBloc>();
    getIt<HomeBloc>();
    getIt<LockBloc>();
    getIt<OnboardBloc>();
    getIt<PassActionBloc>();
    getIt<SessionBloc>();
  });

  test('writers and listeners share one change notifier', () {
    expect(
      identical(getIt<IVaultChanges>(), getIt<VaultChangeNotifier>()),
      isTrue,
    );
  });
}
