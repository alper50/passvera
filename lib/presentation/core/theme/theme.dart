import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

enum ThemeMode { system, systemLight, systemDark, light, dark }

class MyThemeData {
  MyThemeData._();
  static final ThemeData lightheme = ThemeData(
    fontFamily: "QuickSand",
    iconTheme: const IconThemeData(
      size: 40,
      color: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      toolbarTextStyle: MyTextStyles.headline3Bold.copyWith(color: Colors.black),
      titleTextStyle: MyTextStyles.headline3Bold.copyWith(color: Colors.black),
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.grey[50],
      foregroundColor: Colors.grey[50],
      elevation: 0,
    ),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    brightness: Brightness.light,
    snackBarTheme: SnackBarThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const  BorderSide(
          color: Colors.black,
          width: 3.0,
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 8.0,
      highlightElevation: 12.0,
      backgroundColor: Colors.yellow,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: const BorderSide(
          color: Colors.black,
          width: 3.0,
        ),
      ),
    ),
    // listTileTheme: ListTileThemeData(
    //   tileColor: MyColors.lightSecondaryColor,
    //   textColor: MyColors.lightPrimaryColor,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(15),
    //   ),
    // ),
  );

  // static final ThemeData darktheme = ThemeData(
  //   scaffoldBackgroundColor: MyColors.darkBackgroundColor,
  //   splashColor: Colors.transparent,
  //   highlightColor: Colors.transparent,
  //   brightness: Brightness.dark,
  //   // listTileTheme: ListTileThemeData(
  //   //   tileColor: MyColors.secondaryColor,
  //   //   textColor: MyColors.primaryColor,
  //   //   shape: RoundedRectangleBorder(
  //   //     borderRadius: BorderRadius.circular(15),
  //   //   ),
  //   // ),

  //   appBarTheme: AppBarTheme(
  //     iconTheme: IconThemeData(color: MyColors.primaryColor),
  //       elevation: 2,
  //       titleTextStyle:
  //           MyTextStyles.headline3.copyWith(color: MyColors.primaryColor),
  //       backgroundColor: MyColors.darkBackgroundColor,
  //       actionsIconTheme: IconThemeData(color: MyColors.primaryColor)),
  // );
}
