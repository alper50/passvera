import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/i_lock_repository.dart';
import 'package:passvera/domain/i_relock_guard.dart';
import 'package:passvera/domain/lock_constants.dart';

part 'session_event.dart';
part 'session_state.dart';
part 'session_bloc.freezed.dart';

/// App-wide session: privacy cover + relock when the app goes to background.
@injectable
class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final ILockRepository _lockRepository;
  final IRelockGuard _relockGuard;
  final DateTime Function() _now;

  /// Set when the app went to background during an app-started system flow
  /// (see IRelockGuard); the relock decision then waits for the resume.
  DateTime? _suspendedSince;

  SessionBloc(
    this._lockRepository,
    this._relockGuard, {
    @ignoreParam DateTime Function()? clock,
  })  : _now = clock ?? DateTime.now,
        super(SessionState.initial()) {
    on<SessionEvent>(
      (event, emit) async {
        await event.map(
          obscured: (_) async => emit(state.copyWith(isObscured: true)),
          backgrounded: (_) async {
            emit(state.copyWith(isObscured: true));
            if (state.shouldLock) return;
            if (_relockGuard.isSuspended) {
              _suspendedSince ??= _now();
              return;
            }
            emit(state.copyWith(shouldLock: await _mustLock()));
          },
          resumed: (_) async {
            final since = _suspendedSince;
            _suspendedSince = null;
            // Away too long: the phone may have been left mid-flow.
            if (since != null &&
                _now().difference(since) >
                    const Duration(seconds: kExternalFlowRelockSeconds)) {
              emit(state.copyWith(shouldLock: await _mustLock()));
            }
            emit(state.copyWith(isObscured: false));
          },
          lockHandled: (_) async => emit(state.copyWith(shouldLock: false)),
        );
      },
      // Sequential: a resume must not uncover the UI before the relock
      // decision from the preceding background event has been emitted.
      transformer: (events, mapper) => events.asyncExpand(mapper),
    );
  }

  /// Fail closed: if the PIN state is unknown, lock anyway.
  Future<bool> _mustLock() async =>
      (await _lockRepository.isPinSet()).fold((_) => true, (isSet) => isSet);
}
