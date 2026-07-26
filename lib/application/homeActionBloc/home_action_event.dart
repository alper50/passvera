part of 'home_action_bloc.dart';

@immutable
abstract class HomeActionEvent {
  const HomeActionEvent();

  const factory HomeActionEvent.encryptValue({
    required String appKey,
    required String appValue,
    required String tag,
    required int colorValue,
  }) = _EncryptValue;
}

class _EncryptValue extends HomeActionEvent {
  const _EncryptValue({
    required this.appKey,
    required this.appValue,
    required this.tag,
    required this.colorValue,
  });

  final String appKey;
  final String appValue;
  final String tag;
  final int colorValue;
}
