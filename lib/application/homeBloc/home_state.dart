part of 'home_bloc.dart';

// @freezed
// class HomeState with _$HomeState {
//   const factory HomeState({
//     required List<ApplicationModel> values,
//     required bool isValuesLoading,
//     required bool isValueEncrypting,
//     required bool isValueDeleting,
//     required Option<StorageFailure> storageFailureOrSuccessOption,
//   }) = _HomeState;

//   factory HomeState.initial() => HomeState(
//         values: [],
//         isValuesLoading: true,
//         isValueEncrypting: false,
//         isValueDeleting: false,
//         storageFailureOrSuccessOption: none(),
//       );
// }
@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.valuesLoading() = _LoadingFarmOverviews;
  /// [values] is the list to show (tag filter applied); [allValues] keeps the
  /// full list so the filter can change without reloading storage.
  const factory HomeState.loadSucces({
    required List<ApplicationModel> values,
    required List<ApplicationModel> allValues,
    required List<String> tags,
    String? selectedTag,
  }) = _LoadSucces;
  const factory HomeState.loadSuccesEmpty() = _LoadSuccesEmpty;
  const factory HomeState.loadFailed({required Option<StorageFailure> storageFailureOrSuccessOption}) = _LoadFailed;
}