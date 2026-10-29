import 'package:flutter/material.dart';

/// Passvera brand palette (the light look). Prefer these over raw [Colors]
/// in UI.
///
/// Brand surfaces (cards, yellow dialogs, tag-colored screens) look the same
/// in both themes: their borders use [ink] directly and their content is
/// wrapped in BrandSurface. Everything drawn on the app background reads
/// the theme-dependent [AppColors] via `context.colors` instead.
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

/// Colors of UI drawn on the app background, per theme. Same roles as the
/// [MyColors] members of the same name.
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.ink,
    required this.inkSoft,
    required this.surface,
    required this.surfaceWhite,
  });

  /// Text, icons and borders on the background.
  final Color ink;

  /// Offset shadows and secondary text.
  final Color inkSoft;

  /// Scaffold / app bar background.
  final Color surface;

  /// Raised neutral fills: switches, chips, fields.
  final Color surfaceWhite;

  static const AppColors light = AppColors(
    ink: MyColors.ink,
    inkSoft: MyColors.inkSoft,
    surface: MyColors.surface,
    surfaceWhite: MyColors.surfaceWhite,
  );

  /// Light ink on near-black. The shadow alpha is chosen so offset shadows
  /// land on a mid grey, like the light theme's.
  static const AppColors dark = AppColors(
    ink: Color(0xFFF2F2F2),
    inkSoft: Color(0x73FFFFFF),
    surface: Color(0xFF121212),
    surfaceWhite: Color(0xFF1E1E1E),
  );

  @override
  AppColors copyWith({
    Color? ink,
    Color? inkSoft,
    Color? surface,
    Color? surfaceWhite,
  }) =>
      AppColors(
        ink: ink ?? this.ink,
        inkSoft: inkSoft ?? this.inkSoft,
        surface: surface ?? this.surface,
        surfaceWhite: surfaceWhite ?? this.surfaceWhite,
      );

  @override
  AppColors lerp(AppColors? other, double t) {
    if (other == null) return this;
    return AppColors(
      ink: Color.lerp(ink, other.ink, t)!,
      inkSoft: Color.lerp(inkSoft, other.inkSoft, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceWhite: Color.lerp(surfaceWhite, other.surfaceWhite, t)!,
    );
  }
}

extension AppColorsContext on BuildContext {
  AppColors get colors =>
      Theme.of(this).extension<AppColors>() ?? AppColors.light;
}
