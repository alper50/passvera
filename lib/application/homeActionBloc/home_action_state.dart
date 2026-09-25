part of 'home_action_bloc.dart';

@freezed
abstract class HomeActionState with _$HomeActionState {
  const factory HomeActionState({
    required Option<Either<StorageFailure, Unit>> verifyFailureOrSucces,
  }) = _HomeActionState;

  factory HomeActionState.initial() => HomeActionState(
        verifyFailureOrSucces: none(),
      );
}
