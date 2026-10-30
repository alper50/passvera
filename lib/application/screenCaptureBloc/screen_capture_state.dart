part of 'screen_capture_bloc.dart';

@freezed
abstract class ScreenCaptureState with _$ScreenCaptureState {
  const factory ScreenCaptureState({
    /// False where screenshots stay blocked (Android 13 and older).
    required bool isAllowed,

    /// Screenshots taken on this screen; each new one warns the user.
    required int captureCount,
  }) = _ScreenCaptureState;

  factory ScreenCaptureState.initial() =>
      const ScreenCaptureState(isAllowed: false, captureCount: 0);
}
