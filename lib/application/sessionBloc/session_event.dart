part of 'session_bloc.dart';

@freezed
class SessionEvent with _$SessionEvent {
  /// App is still visible but not interactive (e.g. iOS app switcher).
  const factory SessionEvent.obscured() = _Obscured;

  /// App left the foreground; decides whether the vault must relock.
  const factory SessionEvent.backgrounded() = _Backgrounded;

  const factory SessionEvent.resumed() = _Resumed;

  /// UI has navigated to the lock screen (or decided it is already there).
  const factory SessionEvent.lockHandled() = _LockHandled;
}
