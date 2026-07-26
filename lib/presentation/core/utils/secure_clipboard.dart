import 'dart:async';

import 'package:flutter/services.dart';

/// Copies [text] then clears the clipboard after [clearAfter]
/// only if the clipboard still holds the same value.
class SecureClipboard {
  SecureClipboard._();

  static const Duration defaultClearAfter = Duration(seconds: 30);

  static Timer? _clearTimer;
  static String? _pendingValue;

  static Future<void> copy(
    String text, {
    Duration clearAfter = defaultClearAfter,
  }) async {
    await Clipboard.setData(ClipboardData(text: text));
    _pendingValue = text;
    _clearTimer?.cancel();
    _clearTimer = Timer(clearAfter, _clearIfUnchanged);
  }

  static Future<void> _clearIfUnchanged() async {
    final pending = _pendingValue;
    _pendingValue = null;
    if (pending == null) return;

    final current = await Clipboard.getData(Clipboard.kTextPlain);
    if (current?.text == pending) {
      await Clipboard.setData(const ClipboardData(text: ''));
    }
  }
}
