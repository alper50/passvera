part of 'home_action_bloc.dart';

@freezed
abstract class HomeActionEvent with _$HomeActionEvent {
  const factory HomeActionEvent.encryptValue({
    required String appKey,
    required String appValue,
    required String tag,
    required int colorValue,
  }) = _EncryptValue;
}
