part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.keysLoading() = _KeysLoading;
  const factory HomeState.keysLoadSucces({required List<ApplicationModel> models}) = _KeysLoadSucces;
  const factory HomeState.keysLoadFail({required dynamic e}) = _KeysLoadFail;
}
