part of 'home_action_bloc.dart';

@freezed
class HomeActionEvent with _$HomeActionEvent {
  const factory HomeActionEvent.encryptValue({required String appKey, required String appValue}) = _EncrpytValue;
}