part of 'screen_capture_bloc.dart';

@freezed
sealed class ScreenCaptureEvent with _$ScreenCaptureEvent {
  /// A recovery key screen opened: allow screenshots where they can be
  /// reported.
  const factory ScreenCaptureEvent.started() = _Started;

  /// The platform reported a screenshot.
  const factory ScreenCaptureEvent.captured() = _Captured;
}
