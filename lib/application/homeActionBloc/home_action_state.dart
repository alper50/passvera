part of 'home_action_bloc.dart';

@immutable
class HomeActionState {
  const HomeActionState({
    required this.verifyFailureOrSucces,
  });

  final Option<Either<StorageFailure, Unit>> verifyFailureOrSucces;

  factory HomeActionState.initial() => HomeActionState(
        verifyFailureOrSucces: none(),
      );

  HomeActionState copyWith({
    Option<Either<StorageFailure, Unit>>? verifyFailureOrSucces,
  }) {
    return HomeActionState(
      verifyFailureOrSucces:
          verifyFailureOrSucces ?? this.verifyFailureOrSucces,
    );
  }
}
