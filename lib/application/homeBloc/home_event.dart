part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllValues() = _GetKeys;

  /// Filters the list by [tag]; `null` or the already selected tag shows all.
  const factory HomeEvent.tagSelected(String? tag) = _TagSelected;

  /// The user dragged the filter tags into [tags] order; it is saved.
  const factory HomeEvent.tagsReordered(List<String> tags) = _TagsReordered;
}
