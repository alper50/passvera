import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

class MyThemeData {
  MyThemeData._();
  static final ThemeData lightheme = ThemeData(
    fontFamily: 'Quicksand',
    scaffoldBackgroundColor: MyColors.surface,
    iconTheme: const IconThemeData(
      size: 40,
      color: MyColors.ink,
    ),
    appBarTheme: AppBarTheme(
      toolbarTextStyle: MyTextStyles.headline3Bold.copyWith(color: MyColors.ink),
      titleTextStyle: MyTextStyles.headline3Bold.copyWith(color: MyColors.ink),
      iconTheme: const IconThemeData(color: MyColors.ink),
      backgroundColor: MyColors.surface,
      foregroundColor: MyColors.ink,
      elevation: 0,
    ),
    splashColor: MyColors.transparent,
    highlightColor: MyColors.transparent,
    brightness: Brightness.light,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: MyColors.brand,
      contentTextStyle: MyTextStyles.bodyLarge.copyWith(color: MyColors.ink),
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
    colorScheme: const ColorScheme.light(
      primary: MyColors.brand,
      onPrimary: MyColors.ink,
      secondary: MyColors.brand,
      onSecondary: MyColors.ink,
      surface: MyColors.surface,
      onSurface: MyColors.ink,
      error: MyColors.error,
    ),
  );
}
