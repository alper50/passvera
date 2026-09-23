import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/sessionBloc/session_bloc.dart';
import 'package:passvera/domain/errors/lock_failures.dart';

import 'fakes.dart';

void main() {
  SessionBloc build(Either<LockFailure, bool> isPinSet) =>
      SessionBloc(FakeLockRepository(isPinSet));

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

    bloc.add(const SessionEvent.backgrounded());
    await Future<void>.delayed(Duration.zero);

    expect(bloc.state, const SessionState(isObscured: true, shouldLock: false));
  });

  test('fails closed when the PIN state cannot be read', () async {
    final bloc = build(const Left(LockFailure.unexpected('keychain locked')));

    bloc.add(const SessionEvent.backgrounded());
    await Future<void>.delayed(Duration.zero);

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
}
