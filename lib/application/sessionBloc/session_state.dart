part of 'session_bloc.dart';

@freezed
class SessionState with _$SessionState {
  const factory SessionState({
    /// Vault content must be covered (app switcher snapshot, resume).
    required bool isObscured,

    /// One-shot: UI must show the lock screen, then send `lockHandled`.
    required bool shouldLock,
  }) = _SessionState;

  factory SessionState.initial() => const SessionState(
        isObscured: false,
        shouldLock: false,
      );
}
