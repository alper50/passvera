import 'package:flutter/painting.dart';

class MyTextStyles {
  
  MyTextStyles._();
  static const TextStyle headline1 = TextStyle(
    fontSize: 35,
    letterSpacing: 0.25,
    decoration: TextDecoration.none,
  );
  static const TextStyle headline1Bold = TextStyle(
      fontSize: 35,
      letterSpacing: 0.25,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  static const TextStyle headline2 = TextStyle(
    fontSize: 24,
    decoration: TextDecoration.none,
  );
  static const TextStyle headline2Bold = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  static const TextStyle headline3 = TextStyle(
    fontSize: 20,
    decoration: TextDecoration.none,
  );
  static const TextStyle headline3Bold = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    letterSpacing: 0.5,
    decoration: TextDecoration.none,
  );
  static const TextStyle bodyLargeBold = TextStyle(
      fontSize: 16,
      letterSpacing: 0.5,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    letterSpacing: 0.15,
    decoration: TextDecoration.none,
  );
  static const TextStyle bodySmallBold = TextStyle(
      fontSize: 14,
      letterSpacing: 0.25,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    letterSpacing: 0.4,
    decoration: TextDecoration.none,
  );
  static const TextStyle button = TextStyle(
    fontSize: 14,
    letterSpacing: 1.25,
    decoration: TextDecoration.none,
  );
}
