import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_keys_repository.dart';
import 'package:passvera/domain/tag_order.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IKeysRepository _keysRepository;
  HomeBloc(this._keysRepository) : super(const HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) async {
        await event.map(
          getAllValues: (_) async {
            final previousTag = state.maybeMap(
              loadSucces: (s) => s.selectedTag,
              orElse: () => null,
            );
            emit(const HomeState.valuesLoading());

            final result = await _keysRepository.getAllValues();
            // The order is cosmetic: if it cannot be read, show alphabetical.
            final tagOrder =
                (await _keysRepository.getTagOrder()).getOrElse(() => const []);

            result.fold(
                (failure) => emit(HomeState.loadFailed(
                    storageFailureOrSuccessOption: optionOf(failure))),
                (succes) {
              succes.isEmpty
                  ? emit(const HomeState.loadSuccesEmpty())
                  : emit(_withTagFilter(succes, previousTag, tagOrder));
            });
          },
          tagSelected: (e) async {
            state.maybeMap(
              loadSucces: (s) {
                final next = _sameTag(e.tag, s.selectedTag) ? null : e.tag;
                emit(_withTagFilter(s.allValues, next, s.tags));
              },
              orElse: () {},
            );
          },
          tagsReordered: (e) async {
            final previous = state.maybeMap(
              loadSucces: (s) => s,
              orElse: () => null,
            );
            if (previous == null) return;
            // Optimistic: the chip stays where it was dropped.
            emit(_withTagFilter(
                previous.allValues, previous.selectedTag, e.tags));
            final saved = await _keysRepository.saveTagOrder(e.tags);
            if (saved.isLeft()) emit(previous);
          },
        );
      },
    );
  }

  /// Distinct tags (case-insensitive, arranged by [tagOrder]), the entries
  /// grouped in that order, and the ones matching [tag]. A tag that no longer
  /// exists falls back to showing everything.
  static HomeState _withTagFilter(
    List<ApplicationModel> entries,
    String? tag,
    List<String> tagOrder,
  ) {
    final distinct = <String>[];
    for (final model in entries) {
      if (!distinct.any((t) => _sameTag(t, model.tag))) distinct.add(model.tag);
    }
    final tags = TagOrder.arrange(distinct, tagOrder);
    final all = TagOrder.sortEntries(entries, tags);
    final selected = tags.where((t) => _sameTag(t, tag)).firstOrNull;
    return HomeState.loadSucces(
      allValues: all,
      tags: tags,
      selectedTag: selected,
      values: selected == null
          ? all
          : all.where((m) => _sameTag(m.tag, selected)).toList(),
    );
  }

  static bool _sameTag(String? a, String? b) =>
      a != null && b != null && a.toLowerCase() == b.toLowerCase();
}
