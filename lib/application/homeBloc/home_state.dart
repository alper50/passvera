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
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.valuesLoading() = _LoadingFarmOverviews;
  const factory HomeState.loadSucces({required List<ApplicationModel> values}) = _LoadSucces;
  const factory HomeState.loadSuccesEmpty() = _LoadSuccesEmpty;
  const factory HomeState.loadFailed({required Option<StorageFailure> storageFailureOrSuccessOption}) = _LoadFailed;
}