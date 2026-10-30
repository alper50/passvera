/// App lock PIN digit count.
const int kAppPinLength = 4;

/// Failed unlock attempts before temporary lockout.
const int kMaxPinAttempts = 5;

/// Temporary lockout duration after too many failed PIN attempts.
const int kPinLockoutSeconds = 30;

/// Longest time away in an app-started system flow (see IRelockGuard) that
/// does not relock on return; longer means the phone may have been left.
const int kExternalFlowRelockSeconds = 120;
