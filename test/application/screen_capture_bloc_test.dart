import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/screenCaptureBloc/screen_capture_bloc.dart';

import 'fakes.dart';

void main() {
  Future<void> settle() => Future<void>.delayed(Duration.zero);

  test('opening the screen allows screenshots where they are reported',
      () async {
    final bloc = ScreenCaptureBloc(FakeScreenCaptureRepository())
      ..add(const ScreenCaptureEvent.started());
    await settle();

    expect(bloc.state.isAllowed, isTrue);
  });

  test('stays blocked where screenshots cannot be reported', () async {
    final bloc = ScreenCaptureBloc(FakeScreenCaptureRepository(canAllow: false))
      ..add(const ScreenCaptureEvent.started());
    await settle();

    expect(bloc.state.isAllowed, isFalse);
  });

  test('each screenshot is counted so the screen can warn', () async {
    final repository = FakeScreenCaptureRepository();
    final bloc = ScreenCaptureBloc(repository)
      ..add(const ScreenCaptureEvent.started());
    await settle();

    repository
      ..capture()
      ..capture();
    await settle();

    expect(bloc.state.captureCount, 2);
  });

  test('a screen left before it allowed never lifts the block', () async {
    final repository = FakeScreenCaptureRepository();
    final bloc = ScreenCaptureBloc(repository)
      ..add(const ScreenCaptureEvent.started());

    await bloc.close();
    await settle();

    expect(repository.calls, isEmpty);
  });

  test('leaving while the allow is in flight blocks after it', () async {
    final repository = FakeScreenCaptureRepository()
      ..holdAllow = Completer<void>();
    final bloc = ScreenCaptureBloc(repository)
      ..add(const ScreenCaptureEvent.started());
    await settle();

    final closing = bloc.close();
    repository.holdAllow!.complete();
    await closing;

    expect(repository.calls, ['allow', 'block']);
    expect(repository.blocked, isTrue);
  });

  test('leaving the screen puts the block back', () async {
    final repository = FakeScreenCaptureRepository();
    final bloc = ScreenCaptureBloc(repository)
      ..add(const ScreenCaptureEvent.started());
    await settle();

    await bloc.close();

    expect(repository.blocked, isTrue);
  });
}
