import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passvera/injection.dart';

class InitializeApp {
  static Future<void> initalize() async {
    disableFontHttpFetch();
    configureDependencies();
    await initFontLicence();
  }

  static void disableFontHttpFetch() {
    GoogleFonts.config.allowRuntimeFetching = false;
  }

  static Future<void> initFontLicence() async {
    LicenseRegistry.addLicense(() async* {
      final license =
          await rootBundle.loadString('assets/google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    });
  }
}
