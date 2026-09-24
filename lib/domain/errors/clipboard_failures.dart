import 'package:freezed_annotation/freezed_annotation.dart';

part 'clipboard_failures.freezed.dart';

@freezed
abstract class ClipboardFailure with _$ClipboardFailure {
  const factory ClipboardFailure.unexpected(dynamic e) = _Unexpected;
}
