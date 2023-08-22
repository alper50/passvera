part of 'pass_action_bloc.dart';

@freezed
class PassActionEvent with _$PassActionEvent {
  const factory PassActionEvent.deletePass({required ApplicationModel pass}) = _DeletePass;
  const factory PassActionEvent.updatePass({required ApplicationModel pass}) = _UpdatePass;
}