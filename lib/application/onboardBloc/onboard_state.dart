part of 'onboard_bloc.dart';

@freezed
class OnboardState with _$OnboardState {
  const factory OnboardState.initial() = _Initial;
  const factory OnboardState.onboardNotShowed() = _OnboardNotShowed;
  const factory OnboardState.onboarShowed() = _OnboarShowed;
}
