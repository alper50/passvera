part of 'appearance_bloc.dart';

@freezed
sealed class AppearanceEvent with _$AppearanceEvent {
  /// The user picked [mode]; it is saved on this device only.
  const factory AppearanceEvent.modeChanged(AppearanceMode mode) = _ModeChanged;
}
