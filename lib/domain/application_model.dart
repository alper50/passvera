import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:passvera/domain/tag_palette.dart';

@immutable
class ApplicationModel {
  const ApplicationModel({
    required this.key,
    required this.value,
    this.tag = TagPalette.defaultTag,
    this.colorValue = TagPalette.defaultColorValue,
  });

  final String key;
  final String value;
  final String tag;
  final int colorValue;

  ApplicationModel copyWith({
    String? key,
    String? value,
    String? tag,
    int? colorValue,
  }) {
    return ApplicationModel(
      key: key ?? this.key,
      value: value ?? this.value,
      tag: tag ?? this.tag,
      colorValue: colorValue ?? this.colorValue,
    );
  }

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

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApplicationModel &&
            other.key == key &&
            other.value == value &&
            other.tag == tag &&
            other.colorValue == colorValue);
  }

  @override
  int get hashCode => Object.hash(key, value, tag, colorValue);
}
