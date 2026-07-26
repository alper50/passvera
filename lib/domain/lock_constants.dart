/// App lock PIN digit count.
const int kAppPinLength = 4;

/// Failed unlock attempts before temporary lockout.
const int kMaxPinAttempts = 5;

/// Temporary lockout duration after too many failed PIN attempts.
const int kPinLockoutSeconds = 30;
