import 'package:flutter/material.dart';
import 'package:passvera/domain/appearance_mode.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

class MyThemeData {
  MyThemeData._();
  static final ThemeData light = _build(Brightness.light, AppColors.light);
  static final ThemeData dark = _build(Brightness.dark, AppColors.dark);

  /// Snackbars and the FAB are brand surfaces: black ink in both themes.
  static ThemeData _build(Brightness brightness, AppColors c) => ThemeData(
        fontFamily: 'Quicksand',
        scaffoldBackgroundColor: c.surface,
        iconTheme: IconThemeData(
          size: 40,
          color: c.ink,
        ),
        appBarTheme: AppBarTheme(
          toolbarTextStyle: MyTextStyles.headline3Bold.copyWith(color: c.ink),
          titleTextStyle: MyTextStyles.headline3Bold.copyWith(color: c.ink),
          iconTheme: IconThemeData(color: c.ink),
          backgroundColor: c.surface,
          foregroundColor: c.ink,
          elevation: 0,
        ),
        splashColor: MyColors.transparent,
        highlightColor: MyColors.transparent,
        brightness: brightness,
        snackBarTheme: SnackBarThemeData(
          backgroundColor: MyColors.brand,
          contentTextStyle:
              MyTextStyles.bodyLarge.copyWith(color: MyColors.ink),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(
              color: MyColors.ink,
              width: 3.0,
            ),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 8.0,
          highlightElevation: 12.0,
          backgroundColor: MyColors.brand,
          foregroundColor: MyColors.ink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: const BorderSide(
              color: MyColors.ink,
              width: 3.0,
            ),
          ),
        ),
        colorScheme: switch (brightness) {
          Brightness.light => ColorScheme.light(
              primary: MyColors.brand,
              onPrimary: MyColors.ink,
              secondary: MyColors.brand,
              onSecondary: MyColors.ink,
              surface: c.surface,
              onSurface: c.ink,
              error: MyColors.error,
            ),
          Brightness.dark => ColorScheme.dark(
              primary: MyColors.brand,
              onPrimary: MyColors.ink,
              secondary: MyColors.brand,
              onSecondary: MyColors.ink,
              surface: c.surface,
              onSurface: c.ink,
              error: MyColors.error,
            ),
        },
        extensions: [c],
      );
}

extension AppearanceModeTheme on AppearanceMode {
  ThemeMode get themeMode => switch (this) {
        AppearanceMode.system => ThemeMode.system,
        AppearanceMode.light => ThemeMode.light,
        AppearanceMode.dark => ThemeMode.dark,
      };
}
