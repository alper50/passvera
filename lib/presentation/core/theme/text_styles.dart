import 'package:flutter/painting.dart';

class MyTextStyles {
  MyTextStyles._();

  /// Set explicitly: styles passed to AppBar/button themes or
  /// DefaultTextStyle replace (not merge) the inherited font family.
  static const String fontFamily = 'Quicksand';

  static const TextStyle headline1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 35,
    letterSpacing: 0.25,
    decoration: TextDecoration.none,
  );
  static const TextStyle headline1Bold = TextStyle(
      fontFamily: fontFamily,
      fontSize: 35,
      letterSpacing: 0.25,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  static const TextStyle headline2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    decoration: TextDecoration.none,
  );
  static const TextStyle headline2Bold = TextStyle(
      fontFamily: fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  static const TextStyle headline3 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    decoration: TextDecoration.none,
  );
  static const TextStyle headline3Bold = TextStyle(
      fontFamily: fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    letterSpacing: 0.5,
    decoration: TextDecoration.none,
  );
  static const TextStyle bodyLargeBold = TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      letterSpacing: 0.5,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  static const TextStyle bodySmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    letterSpacing: 0.15,
    decoration: TextDecoration.none,
  );
  static const TextStyle bodySmallBold = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      letterSpacing: 0.25,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  static const TextStyle caption = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    letterSpacing: 0.4,
    decoration: TextDecoration.none,
  );
  static const TextStyle button = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    letterSpacing: 1.25,
    decoration: TextDecoration.none,
  );
}
