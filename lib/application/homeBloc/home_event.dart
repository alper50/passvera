part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllValues() = _GetKeys;

  /// Filters the list by [tag]; `null` or the already selected tag shows all.
  const factory HomeEvent.tagSelected(String? tag) = _TagSelected;
}
