import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/infrastructure/screen_capture/screen_capture_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const channel = MethodChannel('com.passvera.app/screen_capture');
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
  late List<String> calls;

  void fakeNative({required bool canAllow}) {
    calls = [];
    messenger.setMockMethodCallHandler(channel, (call) async {
      calls.add(call.method);
      return call.method == 'allow' ? canAllow : null;
    });
  }

  tearDown(() => messenger.setMockMethodCallHandler(channel, null));

  test('reports whether the platform lifted the block', () async {
    fakeNative(canAllow: true);
    expect(await ScreenCaptureService().allow(), isTrue);

    fakeNative(canAllow: false);
    expect(await ScreenCaptureService().allow(), isFalse);
  });

  test('without a native side nothing is allowed', () async {
    expect(await ScreenCaptureService().allow(), isFalse);
  });

  test('blocks again only when the last screen is gone', () async {
    fakeNative(canAllow: true);
    final service = ScreenCaptureService();

    await service.allow();
    await service.allow();
    await service.block();
    expect(calls, ['allow', 'allow'], reason: 'one screen still open');

    await service.block();
    expect(calls.last, 'block');

    await service.block();
    expect(calls.where((c) => c == 'block'), hasLength(1));
  });

  test('a screenshot reported by the platform reaches listeners', () async {
    fakeNative(canAllow: true);
    final service = ScreenCaptureService();
    await service.allow();
    var captures = 0;
    final subscription = service.captures.listen((_) => captures++);

    await messenger.handlePlatformMessage(
      channel.name,
      channel.codec.encodeMethodCall(const MethodCall('captured')),
      (_) {},
    );
    await Future<void>.delayed(Duration.zero);

    expect(captures, 1);
    await subscription.cancel();
  });
}
