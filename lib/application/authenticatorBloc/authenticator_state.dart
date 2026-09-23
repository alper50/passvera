part of 'authenticator_bloc.dart';

@freezed
class AuthenticatorState with _$AuthenticatorState {
  const factory AuthenticatorState({
    required bool isLoading,
    required List<AuthenticatorEntry> entries,
    required Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
        loadFailureOrSuccess,
    required Option<Either<AuthenticatorFailure, Unit>> addFailureOrSuccess,
    required Option<Either<AuthenticatorFailure, Unit>> deleteFailureOrSuccess,
  }) = _AuthenticatorState;

  factory AuthenticatorState.initial() => AuthenticatorState(
        isLoading: false,
        entries: const [],
        loadFailureOrSuccess: none(),
        addFailureOrSuccess: none(),
        deleteFailureOrSuccess: none(),
      );
}
