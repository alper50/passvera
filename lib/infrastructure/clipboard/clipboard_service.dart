import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/errors/clipboard_failures.dart';

/// Sensitive clipboard writes.
///
/// Android/iOS go through a native channel so the OS handles expiry
/// (iOS pasteboard `expirationDate`, Android `EXTRA_IS_SENSITIVE` + native
/// clear timer) even while the app is suspended. Other platforms fall back to
/// a best-effort Dart timer.
@LazySingleton()
class ClipboardService {
  static const MethodChannel _channel =
      MethodChannel('com.passvera.app/clipboard');

  Timer? _fallbackTimer;
  String? _fallbackPending;

  bool get _hasNativeSupport =>
      !kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.android ||
          defaultTargetPlatform == TargetPlatform.iOS);

  Future<Either<ClipboardFailure, Unit>> copySensitive({
    required String text,
    required Duration clearAfter,
  }) async {
    try {
      if (_hasNativeSupport) {
        await _channel.invokeMethod<void>('copySensitive', {
          'text': text,
          'clearAfterMs': clearAfter.inMilliseconds,
        });
      } else {
        await _copyWithDartTimer(text: text, clearAfter: clearAfter);
      }
      return const Right(unit);
    } catch (e) {
      return Left(ClipboardFailure.unexpected(e));
    }
  }

  Future<void> _copyWithDartTimer({
    required String text,
    required Duration clearAfter,
  }) async {
    await Clipboard.setData(ClipboardData(text: text));
    _fallbackPending = text;
    _fallbackTimer?.cancel();
    _fallbackTimer = Timer(clearAfter, _clearFallbackIfUnchanged);
  }

  Future<void> _clearFallbackIfUnchanged() async {
    final pending = _fallbackPending;
    _fallbackPending = null;
    if (pending == null) return;

    final current = await Clipboard.getData(Clipboard.kTextPlain);
    if (current?.text == pending) {
      await Clipboard.setData(const ClipboardData(text: ''));
    }
  }
}
