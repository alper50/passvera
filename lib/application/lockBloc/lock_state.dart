part of 'lock_bloc.dart';

@immutable
class AppLockState {
  const AppLockState({
    required this.isLoading,
    required this.isPinEnabled,
    required this.isUnlocked,
    required this.lockoutRemainingSeconds,
    required this.statusFailureOrSuccess,
    required this.verifyFailureOrSuccess,
    required this.setFailureOrSuccess,
    required this.updateFailureOrSuccess,
    required this.removeFailureOrSuccess,
  });

  final bool isLoading;
  final bool isPinEnabled;
  final bool isUnlocked;
  final int lockoutRemainingSeconds;
  final Option<Either<LockFailure, bool>> statusFailureOrSuccess;
  final Option<Either<LockFailure, Unit>> verifyFailureOrSuccess;
  final Option<Either<LockFailure, Unit>> setFailureOrSuccess;
  final Option<Either<LockFailure, Unit>> updateFailureOrSuccess;
  final Option<Either<LockFailure, Unit>> removeFailureOrSuccess;

  bool get isLockedOut => lockoutRemainingSeconds > 0;

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

  AppLockState copyWith({
    bool? isLoading,
    bool? isPinEnabled,
    bool? isUnlocked,
    int? lockoutRemainingSeconds,
    Option<Either<LockFailure, bool>>? statusFailureOrSuccess,
    Option<Either<LockFailure, Unit>>? verifyFailureOrSuccess,
    Option<Either<LockFailure, Unit>>? setFailureOrSuccess,
    Option<Either<LockFailure, Unit>>? updateFailureOrSuccess,
    Option<Either<LockFailure, Unit>>? removeFailureOrSuccess,
  }) {
    return AppLockState(
      isLoading: isLoading ?? this.isLoading,
      isPinEnabled: isPinEnabled ?? this.isPinEnabled,
      isUnlocked: isUnlocked ?? this.isUnlocked,
      lockoutRemainingSeconds:
          lockoutRemainingSeconds ?? this.lockoutRemainingSeconds,
      statusFailureOrSuccess:
          statusFailureOrSuccess ?? this.statusFailureOrSuccess,
      verifyFailureOrSuccess:
          verifyFailureOrSuccess ?? this.verifyFailureOrSuccess,
      setFailureOrSuccess: setFailureOrSuccess ?? this.setFailureOrSuccess,
      updateFailureOrSuccess:
          updateFailureOrSuccess ?? this.updateFailureOrSuccess,
      removeFailureOrSuccess:
          removeFailureOrSuccess ?? this.removeFailureOrSuccess,
    );
  }
}
