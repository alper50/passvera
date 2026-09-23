import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/i_lock_repository.dart';

part 'session_event.dart';
part 'session_state.dart';
part 'session_bloc.freezed.dart';

/// App-wide session: privacy cover + relock when the app goes to background.
@injectable
class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final ILockRepository _lockRepository;

  SessionBloc(this._lockRepository) : super(SessionState.initial()) {
    on<SessionEvent>(
      (event, emit) async {
        await event.map(
          obscured: (_) async => emit(state.copyWith(isObscured: true)),
          backgrounded: (_) async {
            emit(state.copyWith(isObscured: true));
            if (state.shouldLock) return;
            final result = await _lockRepository.isPinSet();
            // Fail closed: if the PIN state is unknown, lock anyway.
            final mustLock = result.fold((_) => true, (isSet) => isSet);
            emit(state.copyWith(shouldLock: mustLock));
          },
          resumed: (_) async => emit(state.copyWith(isObscured: false)),
          lockHandled: (_) async => emit(state.copyWith(shouldLock: false)),
        );
      },
      // Sequential: a resume must not uncover the UI before the relock
      // decision from the preceding background event has been emitted.
      transformer: (events, mapper) => events.asyncExpand(mapper),
    );
  }
}
