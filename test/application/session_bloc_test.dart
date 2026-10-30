import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/sessionBloc/session_bloc.dart';
import 'package:passvera/domain/errors/lock_failures.dart';
import 'package:passvera/domain/lock_constants.dart';
import 'package:passvera/infrastructure/lock/relock_guard.dart';

import 'fakes.dart';

void main() {
  late RelockGuard guard;
  late DateTime now;

  setUp(() {
    guard = RelockGuard();
    now = DateTime(2026, 10, 30, 12);
  });

  SessionBloc build(Either<LockFailure, bool> isPinSet) =>
      SessionBloc(FakeLockRepository(isPinSet), guard, clock: () => now);

  Future<void> send(SessionBloc bloc, SessionEvent event) async {
    bloc.add(event);
    await Future<void>.delayed(Duration.zero);
  }

  test('backgrounding with a PIN covers the UI and requests a lock', () {
    final bloc = build(const Right(true));

    expectLater(
      bloc.stream,
      emitsInOrder(const [
        SessionState(isObscured: true, shouldLock: false),
        SessionState(isObscured: true, shouldLock: true),
      ]),
    );
    bloc.add(const SessionEvent.backgrounded());
  });

  test('backgrounding without a PIN only covers the UI', () async {
    final bloc = build(const Right(false));

    await send(bloc, const SessionEvent.backgrounded());

    expect(bloc.state, const SessionState(isObscured: true, shouldLock: false));
  });

  test('fails closed when the PIN state cannot be read', () async {
    final bloc = build(const Left(LockFailure.unexpected('keychain locked')));

    await send(bloc, const SessionEvent.backgrounded());

    expect(bloc.state.shouldLock, isTrue);
  });

  test('resume uncovers only after the relock decision', () {
    final bloc = build(const Right(true));

    expectLater(
      bloc.stream,
      emitsInOrder(const [
        SessionState(isObscured: true, shouldLock: false),
        SessionState(isObscured: true, shouldLock: true),
        SessionState(isObscured: false, shouldLock: true),
        SessionState(isObscured: false, shouldLock: false),
      ]),
    );
    bloc
      ..add(const SessionEvent.backgrounded())
      ..add(const SessionEvent.resumed())
      ..add(const SessionEvent.lockHandled());
  });

  group('during an app-started system flow (Google sign-in)', () {
    /// Runs [body] while the guard is suspended, like a pending sign-in.
    Future<void> inFlow(Future<void> Function() body) =>
        guard.suspendWhile(body);

    test('going to the consent screen does not relock', () async {
      final bloc = build(const Right(true));

      await inFlow(() async {
        await send(bloc, const SessionEvent.backgrounded());
        expect(bloc.state.isObscured, isTrue, reason: 'still covered');
        now = now.add(const Duration(seconds: 30));
        await send(bloc, const SessionEvent.resumed());
      });

      expect(
          bloc.state, const SessionState(isObscured: false, shouldLock: false));
    });

    test('away longer than the limit relocks before uncovering', () {
      final bloc = build(const Right(true));

      expectLater(
        bloc.stream,
        emitsInOrder(const [
          SessionState(isObscured: true, shouldLock: false),
          SessionState(isObscured: true, shouldLock: true),
          SessionState(isObscured: false, shouldLock: true),
        ]),
      );
      inFlow(() async {
        await send(bloc, const SessionEvent.backgrounded());
        now = now.add(
          const Duration(seconds: kExternalFlowRelockSeconds + 1),
        );
        await send(bloc, const SessionEvent.resumed());
      });
    });

    test('after the flow, backgrounding relocks as usual', () async {
      final bloc = build(const Right(true));

      await inFlow(() => send(bloc, const SessionEvent.backgrounded()));
      await send(bloc, const SessionEvent.resumed());
      await send(bloc, const SessionEvent.backgrounded());

      expect(bloc.state.shouldLock, isTrue);
    });
  });

  test('the guard is released even when the flow fails', () async {
    await expectLater(
      guard.suspendWhile<void>(() async => throw StateError('cancelled')),
      throwsStateError,
    );
    expect(guard.isSuspended, isFalse);
  });
}
