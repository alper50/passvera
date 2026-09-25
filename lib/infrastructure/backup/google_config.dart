/// Google OAuth configuration, supplied at build time so no project ids live
/// in the repository:
///
///   flutter build apk --release \
///     --dart-define=PASSVERA_GOOGLE_SERVER_CLIENT_ID=WEB_CLIENT_ID
///
/// Without it the app works normally and Drive backup reports
/// `BackupFailure.notConfigured`.
abstract final class GoogleConfig {
  /// The *web* OAuth client id (google_sign_in's `serverClientId` on Android).
  static const String serverClientId =
      String.fromEnvironment('PASSVERA_GOOGLE_SERVER_CLIENT_ID');

  static bool get isConfigured => serverClientId.isNotEmpty;
}
