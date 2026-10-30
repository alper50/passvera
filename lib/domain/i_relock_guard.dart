/// Keeps the session from relocking while the app itself has handed the
/// screen to the system for a flow it started (Google sign-in and consent).
/// Relocking there would tear down the screen waiting for the result.
abstract class IRelockGuard {
  /// True while at least one such flow is running.
  bool get isSuspended;

  /// Runs [flow] with relocking suspended.
  Future<T> suspendWhile<T>(Future<T> Function() flow);
}
