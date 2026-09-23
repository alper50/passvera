part of 'clipboard_bloc.dart';

@freezed
class ClipboardEvent with _$ClipboardEvent {
  const factory ClipboardEvent.copySensitive({required String text}) =
      _CopySensitive;
}
