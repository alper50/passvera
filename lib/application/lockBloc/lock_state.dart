part of 'lock_bloc.dart';

@freezed
class AppLockState with _$AppLockState {
  const AppLockState._();

  const factory AppLockState({
    required bool isLoading,
    required bool isPinEnabled,
    required bool isUnlocked,
    required int lockoutRemainingSeconds,
    required Option<Either<LockFailure, bool>> statusFailureOrSuccess,
    required Option<Either<LockFailure, Unit>> verifyFailureOrSuccess,
    required Option<Either<LockFailure, Unit>> setFailureOrSuccess,
    required Option<Either<LockFailure, Unit>> updateFailureOrSuccess,
    required Option<Either<LockFailure, Unit>> removeFailureOrSuccess,
  }) = _AppLockState;

  factory AppLockState.initial() => AppLockState(
        isLoading: false,
        isPinEnabled: false,
        isUnlocked: false,
        lockoutRemainingSeconds: 0,
        statusFailureOrSuccess: none(),
        verifyFailureOrSuccess: none(),
        setFailureOrSuccess: none(),
        updateFailureOrSuccess: none(),
        removeFailureOrSuccess: none(),
      );

  bool get isLockedOut => lockoutRemainingSeconds > 0;
}
