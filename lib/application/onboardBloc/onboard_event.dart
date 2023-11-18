part of 'onboard_bloc.dart';

@freezed
class OnboardEvent with _$OnboardEvent {
  const factory OnboardEvent.checkOnboard() = _CheckOnboard;
  const factory OnboardEvent.setOnboard() = _SetOnboard;
}