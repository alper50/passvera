part of 'pass_action_bloc.dart';

@immutable
class PassActionState {
  const PassActionState({
    required this.deleteFailureOrSucces,
    required this.updateFailureOrSucces,
  });

  final Option<Either<StorageFailure, Unit>> deleteFailureOrSucces;
  final Option<Either<StorageFailure, Unit>> updateFailureOrSucces;

  factory PassActionState.initial() => PassActionState(
        deleteFailureOrSucces: none(),
        updateFailureOrSucces: none(),
      );

  PassActionState copyWith({
    Option<Either<StorageFailure, Unit>>? deleteFailureOrSucces,
    Option<Either<StorageFailure, Unit>>? updateFailureOrSucces,
  }) {
    return PassActionState(
      deleteFailureOrSucces:
          deleteFailureOrSucces ?? this.deleteFailureOrSucces,
      updateFailureOrSucces:
          updateFailureOrSucces ?? this.updateFailureOrSucces,
    );
  }
}
