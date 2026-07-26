import 'package:flutter/material.dart';

/// Passvera brand palette. Prefer these over raw [Colors] in UI.
class MyColors {
  MyColors._();

  /// Primary brand / card / button fill (logo yellow).
  static const Color brand = Color(0xFFFFEB3B);

  /// Primary text, icons, borders.
  static const Color ink = Color(0xFF000000);

  /// Soft shadow / secondary ink.
  static const Color inkSoft = Color(0x8A000000);

  /// Default scaffold / app bar surface.
  static const Color surface = Color(0xFFFAFAFA);

  static const Color surfaceWhite = Color(0xFFFFFFFF);

  static const Color error = Color.fromARGB(255, 235, 110, 110);

  static const Color indicatorInactive = Color(0xFF424242);

  static const Color transparent = Colors.transparent;

  // Legacy aliases used in older theme comments / snackbar.
  static const Color primaryColor = brand;
  static const Color lightBackgroundColor = surface;
  static const Color errorColor = error;
  static const Color transparentColor = transparent;
}
