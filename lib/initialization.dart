import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:passvera/injection.dart';

class InitializeApp {
  static Future<void> initalize() async {
    configureDependencies();
    await initFontLicence();
  }

  /// Quicksand ships in the app bundle (see pubspec `fonts:`) under the OFL.
  static Future<void> initFontLicence() async {
    LicenseRegistry.addLicense(() async* {
      final license =
          await rootBundle.loadString('assets/google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['Quicksand'], license);
    });
  }
}
