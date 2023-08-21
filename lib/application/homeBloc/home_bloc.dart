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
            emit(const HomeState.valuesLoading());

            final result = await _keysRepository.getAllValues();

            result.fold(
                (failure) => emit(HomeState.loadFailed(
                    storageFailureOrSuccessOption: optionOf(failure))),
                (succes) {
              succes.isEmpty
                  ? emit(const HomeState.loadSuccesEmpty())
                  : emit(HomeState.loadSucces(values: succes));
            });
          },
        );
      },
    );
  }
}
