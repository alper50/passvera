/// Light/dark preference. [system] follows the phone setting.
///
/// Device-only: it is never part of a Drive backup.
enum AppearanceMode {
  system,
  light,
  dark;

  /// Stored form; `null` for [system], which is the default and not stored.
  String? get storageValue => this == system ? null : name;

  static AppearanceMode fromStorage(String? raw) => switch (raw) {
        'light' => light,
        'dark' => dark,
        _ => system,
      };
}
