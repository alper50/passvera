part of 'clipboard_bloc.dart';

@freezed
abstract class ClipboardEvent with _$ClipboardEvent {
  const factory ClipboardEvent.copySensitive({required String text}) =
      _CopySensitive;
}
