import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/errors/lock_failures.dart';
import 'package:passvera/domain/i_lock_repository.dart';

part 'lock_event.dart';
part 'lock_state.dart';

@injectable
class LockBloc extends Bloc<LockEvent, AppLockState> {
  final ILockRepository _lockRepository;

  LockBloc(this._lockRepository) : super(AppLockState.initial()) {
    on<LockEvent>((event, emit) async {
      if (event is _CheckPinStatus) {
        emit(state.copyWith(isLoading: true));
        final result = await _lockRepository.isPinSet();
        final lockout = await _lockRepository.getLockoutRemainingSeconds();
        final remaining = lockout.fold((_) => 0, (seconds) => seconds);
        result.fold(
          (failure) => emit(
            state.copyWith(
              isLoading: false,
              lockoutRemainingSeconds: remaining,
              statusFailureOrSuccess: optionOf(Left(failure)),
            ),
          ),
          (isSet) => emit(
            state.copyWith(
              isLoading: false,
              isPinEnabled: isSet,
              lockoutRemainingSeconds: remaining,
              statusFailureOrSuccess: none(),
            ),
          ),
        );
      } else if (event is _RefreshLockout) {
        final lockout = await _lockRepository.getLockoutRemainingSeconds();
        lockout.fold(
          (_) {},
          (seconds) => emit(
            state.copyWith(lockoutRemainingSeconds: seconds),
          ),
        );
      } else if (event is _VerifyPin) {
        emit(state.copyWith(isLoading: true, verifyFailureOrSuccess: none()));
        final result = await _lockRepository.verifyPin(pin: event.pin);
        await result.fold(
          (failure) async {
            final remaining = failure.map(
              unexpected: (_) => state.lockoutRemainingSeconds,
              wrongPin: () => 0,
              invalidPin: () => 0,
              pinAlreadySet: () => 0,
              pinNotSet: () => 0,
              pinMismatch: () => 0,
              lockedOut: (seconds) => seconds,
            );
            emit(
              state.copyWith(
                isLoading: false,
                lockoutRemainingSeconds: remaining,
                verifyFailureOrSuccess: optionOf(Left(failure)),
              ),
            );
          },
          (success) async {
            emit(
              state.copyWith(
                isLoading: false,
                isUnlocked: true,
                lockoutRemainingSeconds: 0,
                verifyFailureOrSuccess: optionOf(Right(success)),
              ),
            );
          },
        );
      } else if (event is _SetPin) {
        emit(state.copyWith(isLoading: true, setFailureOrSuccess: none()));
        if (event.pin != event.confirmPin) {
          emit(
            state.copyWith(
              isLoading: false,
              setFailureOrSuccess:
                  optionOf(const Left(LockFailure.pinMismatch())),
            ),
          );
          return;
        }
        final result = await _lockRepository.setPin(pin: event.pin);
        result.fold(
          (failure) => emit(
            state.copyWith(
              isLoading: false,
              setFailureOrSuccess: optionOf(Left(failure)),
            ),
          ),
          (success) => emit(
            state.copyWith(
              isLoading: false,
              isPinEnabled: true,
              setFailureOrSuccess: optionOf(Right(success)),
            ),
          ),
        );
      } else if (event is _UpdatePin) {
        emit(state.copyWith(isLoading: true, updateFailureOrSuccess: none()));
        if (event.newPin != event.confirmNewPin) {
          emit(
            state.copyWith(
              isLoading: false,
              updateFailureOrSuccess:
                  optionOf(const Left(LockFailure.pinMismatch())),
            ),
          );
          return;
        }
        final result = await _lockRepository.updatePin(
          currentPin: event.currentPin,
          newPin: event.newPin,
        );
        result.fold(
          (failure) => emit(
            state.copyWith(
              isLoading: false,
              updateFailureOrSuccess: optionOf(Left(failure)),
            ),
          ),
          (success) => emit(
            state.copyWith(
              isLoading: false,
              isPinEnabled: true,
              updateFailureOrSuccess: optionOf(Right(success)),
            ),
          ),
        );
      } else if (event is _RemovePin) {
        emit(state.copyWith(isLoading: true, removeFailureOrSuccess: none()));
        final result =
            await _lockRepository.removePin(currentPin: event.currentPin);
        result.fold(
          (failure) => emit(
            state.copyWith(
              isLoading: false,
              removeFailureOrSuccess: optionOf(Left(failure)),
            ),
          ),
          (success) => emit(
            state.copyWith(
              isLoading: false,
              isPinEnabled: false,
              removeFailureOrSuccess: optionOf(Right(success)),
            ),
          ),
        );
      } else if (event is _ClearMessages) {
        emit(
          state.copyWith(
            verifyFailureOrSuccess: none(),
            setFailureOrSuccess: none(),
            updateFailureOrSuccess: none(),
            removeFailureOrSuccess: none(),
            statusFailureOrSuccess: none(),
          ),
        );
      }
    });
  }
}
