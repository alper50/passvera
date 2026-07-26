part of 'pass_action_bloc.dart';

@immutable
abstract class PassActionEvent {
  const PassActionEvent();

  const factory PassActionEvent.deletePass({required ApplicationModel pass}) =
      _DeletePass;
  const factory PassActionEvent.updatePass({
    required ApplicationModel pass,
    required String oldKey,
  }) = _UpdatePass;
}

class _DeletePass extends PassActionEvent {
  const _DeletePass({required this.pass});
  final ApplicationModel pass;
}

class _UpdatePass extends PassActionEvent {
  const _UpdatePass({required this.pass, required this.oldKey});
  final ApplicationModel pass;
  final String oldKey;
}
