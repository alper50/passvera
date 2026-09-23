import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:passvera/domain/tag_palette.dart';

part 'application_model.freezed.dart';

@freezed
class ApplicationModel with _$ApplicationModel {
  const ApplicationModel._();

  const factory ApplicationModel({
    required String key,
    required String value,
    @Default(TagPalette.defaultTag) String tag,
    @Default(TagPalette.defaultColorValue) int colorValue,
  }) = _ApplicationModel;

  /// Storage payload. Legacy plain strings are treated as password-only.
  String toStorageValue() {
    return jsonEncode({
      'password': value,
      'tag': tag,
      'color': colorValue,
    });
  }

  factory ApplicationModel.fromStorage({
    required String key,
    required String raw,
  }) {
    try {
      final decoded = jsonDecode(raw);
      if (decoded is Map<String, dynamic>) {
        return ApplicationModel(
          key: key,
          value: (decoded['password'] as String?) ?? '',
          tag: (decoded['tag'] as String?)?.trim().isNotEmpty == true
              ? (decoded['tag'] as String).trim()
              : TagPalette.defaultTag,
          colorValue: (decoded['color'] as num?)?.toInt() ??
              TagPalette.defaultColorValue,
        );
      }
    } catch (_) {
      // Legacy plaintext password.
    }
    return ApplicationModel(key: key, value: raw);
  }
}
