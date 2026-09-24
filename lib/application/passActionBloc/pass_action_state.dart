part of 'pass_action_bloc.dart';

@freezed
abstract class PassActionState with _$PassActionState {
  const factory PassActionState({
    required Option<Either<StorageFailure, Unit>> deleteFailureOrSucces,
    required Option<Either<StorageFailure, Unit>> updateFailureOrSucces,
  }) = _PassActionState;

  factory PassActionState.initial() => PassActionState(
        deleteFailureOrSucces: none(),
        updateFailureOrSucces: none(),
      );
}
