import 'dart:async';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

/// Native screenshot control (see MainActivity / AppDelegate). Android 14+
/// lifts FLAG_SECURE and reports screenshots; iOS never blocks them and
/// only reports. Other platforms have no channel: nothing is allowed.
@LazySingleton()
class ScreenCaptureService {
  static const MethodChannel _channel =
      MethodChannel('com.passvera.app/screen_capture');

  final StreamController<void> _captures = StreamController.broadcast();
  bool _listening = false;

  /// Screens currently allowing screenshots; the native block comes back
  /// only when the last one is gone, whatever order they are disposed in.
  int _holders = 0;

  Stream<void> get captures => _captures.stream;

  Future<bool> allow() async {
    _listen();
    _holders++;
    try {
      return await _channel.invokeMethod<bool>('allow') ?? false;
    } on MissingPluginException {
      return false;
    } on PlatformException {
      return false;
    }
  }

  Future<void> block() async {
    if (_holders == 0) return;
    _holders--;
    if (_holders > 0) return;
    try {
      await _channel.invokeMethod<void>('block');
    } on MissingPluginException {
      // No native side: nothing was lifted.
    } on PlatformException {
      // Android re-applies FLAG_SECURE on the next activity start anyway.
    }
  }

  void _listen() {
    if (_listening) return;
    _listening = true;
    _channel.setMethodCallHandler((call) async {
      if (call.method == 'captured') _captures.add(null);
    });
  }
}
