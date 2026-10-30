/// Screenshots of the screens that show the recovery key. They are allowed
/// only where the platform reports each screenshot, so the app can warn the
/// user right after one is taken (Android 14+, iOS); everywhere else the
/// screen stays protected.
abstract class IScreenCaptureRepository {
  /// Lifts the screenshot block. False where screenshots cannot be detected:
  /// the block stays.
  Future<bool> allowWithWarning();

  /// Puts the block back once the last screen that allowed it is gone.
  Future<void> block();

  /// Fires after each screenshot taken while allowed.
  Stream<void> get captures;
}
