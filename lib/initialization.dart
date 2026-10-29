import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:passvera/domain/appearance_mode.dart';
import 'package:passvera/domain/i_appearance_repository.dart';
import 'package:passvera/domain/i_storage_migration.dart';
import 'package:passvera/injection.dart';

class InitializeApp {
  static Future<void> initalize() async {
    configureDependencies();
    await initFontLicence();
  }

  /// Brings secure storage to the current layout before anything reads it.
  /// False leaves the legacy data untouched and the app must not start.
  static Future<bool> prepareStorage() async =>
      (await getIt<IStorageMigration>().migrate()).isRight();

  /// Read before the first frame so a forced light/dark mode never flashes
  /// the system theme. Unreadable means "follow the system".
  static Future<AppearanceMode> loadAppearance() async =>
      (await getIt<IAppearanceRepository>().getMode())
          .getOrElse(() => AppearanceMode.system);

  /// Quicksand ships in the app bundle (see pubspec `fonts:`) under the OFL.
  static Future<void> initFontLicence() async {
    LicenseRegistry.addLicense(() async* {
      final license =
          await rootBundle.loadString('assets/google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['Quicksand'], license);
    });
  }
}
