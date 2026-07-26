part of 'authenticator_bloc.dart';

@immutable
class AuthenticatorState {
  const AuthenticatorState({
    required this.isLoading,
    required this.entries,
    required this.loadFailureOrSuccess,
    required this.addFailureOrSuccess,
    required this.deleteFailureOrSuccess,
  });

  final bool isLoading;
  final List<AuthenticatorEntry> entries;
  final Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>
      loadFailureOrSuccess;
  final Option<Either<AuthenticatorFailure, Unit>> addFailureOrSuccess;
  final Option<Either<AuthenticatorFailure, Unit>> deleteFailureOrSuccess;

  factory AuthenticatorState.initial() => AuthenticatorState(
        isLoading: false,
        entries: const [],
        loadFailureOrSuccess: none(),
        addFailureOrSuccess: none(),
        deleteFailureOrSuccess: none(),
      );

  AuthenticatorState copyWith({
    bool? isLoading,
    List<AuthenticatorEntry>? entries,
    Option<Either<AuthenticatorFailure, List<AuthenticatorEntry>>>?
        loadFailureOrSuccess,
    Option<Either<AuthenticatorFailure, Unit>>? addFailureOrSuccess,
    Option<Either<AuthenticatorFailure, Unit>>? deleteFailureOrSuccess,
  }) {
    return AuthenticatorState(
      isLoading: isLoading ?? this.isLoading,
      entries: entries ?? this.entries,
      loadFailureOrSuccess:
          loadFailureOrSuccess ?? this.loadFailureOrSuccess,
      addFailureOrSuccess: addFailureOrSuccess ?? this.addFailureOrSuccess,
      deleteFailureOrSuccess:
          deleteFailureOrSuccess ?? this.deleteFailureOrSuccess,
    );
  }
}
