part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<ApplicationModel> values,
    required bool isValuesLoading,
    required bool isValueEncrypting,
    required bool isValueDeleting,
    required Option<StorageFailure> storageFailureOrSuccessOption,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        values: [],
        isValuesLoading: false,
        isValueEncrypting: false,
        isValueDeleting: false,
        storageFailureOrSuccessOption: none(),
      );
}
