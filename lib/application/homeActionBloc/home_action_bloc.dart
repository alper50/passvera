import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_keys_repository.dart';

part 'home_action_event.dart';
part 'home_action_state.dart';
part 'home_action_bloc.freezed.dart';

@injectable
class HomeActionBloc extends Bloc<HomeActionEvent, HomeActionState> {
  final IKeysRepository _keysRepository;
  HomeActionBloc(this._keysRepository) : super(HomeActionState.initial()) {
    on<HomeActionEvent>((event, emit) async {
      await event.map(
        encryptValue: (e) async {
          if (e.appKey.isEmpty || e.appValue.isEmpty) {
            emit(
              state.copyWith(
                verifyFailureOrSucces: optionOf(
                  const Left(StorageFailure.emptyKey()),
                ),
              ),
            );
          } else {
            final model = ApplicationModel(key: e.appKey, value: e.appValue);
            final result = await _keysRepository.encryptValue(appModel: model);
            result.fold(
              (failure) => emit(state.copyWith(
                verifyFailureOrSucces: optionOf(Left(failure)),
              )),
              (succes) async {
                emit(
                  state.copyWith(
                    verifyFailureOrSucces: optionOf(Right(succes)),
                  ),
                );
              },
            );
          }
        },
      );
    });
  }
}
