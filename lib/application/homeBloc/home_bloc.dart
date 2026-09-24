import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_keys_repository.dart';

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

            result.fold(
                (failure) => emit(HomeState.loadFailed(
                    storageFailureOrSuccessOption: optionOf(failure))),
                (succes) {
              succes.isEmpty
                  ? emit(const HomeState.loadSuccesEmpty())
                  : emit(_withTagFilter(succes, previousTag));
            });
          },
          tagSelected: (e) async {
            state.maybeMap(
              loadSucces: (s) {
                final next = _sameTag(e.tag, s.selectedTag) ? null : e.tag;
                emit(_withTagFilter(s.allValues, next));
              },
              orElse: () {},
            );
          },
        );
      },
    );
  }

  /// Distinct tags (case-insensitive, in list order) and the entries matching
  /// [tag]. A tag that no longer exists falls back to showing everything.
  static HomeState _withTagFilter(List<ApplicationModel> all, String? tag) {
    final tags = <String>[];
    for (final model in all) {
      if (!tags.any((t) => _sameTag(t, model.tag))) tags.add(model.tag);
    }
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
