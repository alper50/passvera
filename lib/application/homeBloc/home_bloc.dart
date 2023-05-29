import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
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
            final result = await _keysRepository.getAllValues();
            result.fold(
              (failure) => emit(HomeState.keysLoadFail(e: failure)),
              (succes) => emit(
                HomeState.keysLoadSucces(models: succes),
              ),
            );
          },
          // encryptValue: (e) async {
          //   final model = ApplicationModel(key: e.key, value: e.value);
          //   final result = await _keysRepository.encryptValue(appModel: model);
          //   if(result){

          //   }
          // },
        );
      },
    );
  }
}
