import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/errors/lock_failures.dart';
import 'package:passvera/domain/i_lock_repository.dart';

part 'lock_event.dart';
part 'lock_state.dart';
part 'lock_bloc.freezed.dart';

@injectable
class LockBloc extends Bloc<LockEvent, AppLockState> {
  final ILockRepository _lockRepository;

  LockBloc(this._lockRepository) : super(AppLockState.initial()) {
    on<LockEvent>((event, emit) async {
      await event.map(
        checkPinStatus: (_) async {
          emit(state.copyWith(isLoading: true, statusFailureOrSuccess: none()));
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
                statusFailureOrSuccess: optionOf(Right(isSet)),
              ),
            ),
          );
        },
        refreshLockout: (_) async {
          final lockout = await _lockRepository.getLockoutRemainingSeconds();
          lockout.fold(
            (_) {},
            (seconds) => emit(
              state.copyWith(lockoutRemainingSeconds: seconds),
            ),
          );
        },
        verifyPin: (e) async {
          emit(state.copyWith(isLoading: true, verifyFailureOrSuccess: none()));
          final result = await _lockRepository.verifyPin(pin: e.pin);
          result.fold(
            (failure) {
              final remaining = failure.maybeWhen(
                unexpected: (_) => state.lockoutRemainingSeconds,
                lockedOut: (seconds) => seconds,
                orElse: () => 0,
              );
              emit(
                state.copyWith(
                  isLoading: false,
                  lockoutRemainingSeconds: remaining,
                  verifyFailureOrSuccess: optionOf(Left(failure)),
                ),
              );
            },
            (success) => emit(
              state.copyWith(
                isLoading: false,
                isUnlocked: true,
                lockoutRemainingSeconds: 0,
                verifyFailureOrSuccess: optionOf(Right(success)),
              ),
            ),
          );
        },
        setPin: (e) async {
          emit(state.copyWith(isLoading: true, setFailureOrSuccess: none()));
          if (e.pin != e.confirmPin) {
            emit(
              state.copyWith(
                isLoading: false,
                setFailureOrSuccess:
                    optionOf(const Left(LockFailure.pinMismatch())),
              ),
            );
            return;
          }
          final result = await _lockRepository.setPin(pin: e.pin);
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
        },
        updatePin: (e) async {
          emit(state.copyWith(isLoading: true, updateFailureOrSuccess: none()));
          if (e.newPin != e.confirmNewPin) {
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
            currentPin: e.currentPin,
            newPin: e.newPin,
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
        },
        removePin: (e) async {
          emit(state.copyWith(isLoading: true, removeFailureOrSuccess: none()));
          final result =
              await _lockRepository.removePin(currentPin: e.currentPin);
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
        },
        clearMessages: (_) async {
          emit(
            state.copyWith(
              verifyFailureOrSuccess: none(),
              setFailureOrSuccess: none(),
              updateFailureOrSuccess: none(),
              removeFailureOrSuccess: none(),
              statusFailureOrSuccess: none(),
            ),
          );
        },
      );
    });
  }
}
