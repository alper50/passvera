import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_keys_repository.dart';
import 'package:passvera/domain/tag_palette.dart';

part 'home_action_event.dart';
part 'home_action_state.dart';

@injectable
class HomeActionBloc extends Bloc<HomeActionEvent, HomeActionState> {
  final IKeysRepository _keysRepository;
  HomeActionBloc(this._keysRepository) : super(HomeActionState.initial()) {
    on<HomeActionEvent>((event, emit) async {
      if (event is _EncryptValue) {
        if (event.appKey.isEmpty || event.appValue.isEmpty) {
          emit(
            state.copyWith(
              verifyFailureOrSucces: optionOf(
                const Left(StorageFailure.emptyKey()),
              ),
            ),
          );
          return;
        }

        final model = ApplicationModel(
          key: event.appKey,
          value: event.appValue,
          tag: event.tag.trim().isEmpty
              ? TagPalette.defaultTag
              : event.tag.trim(),
          colorValue: event.colorValue,
        );
        final result = await _keysRepository.encryptValue(appModel: model);
        result.fold(
          (failure) => emit(state.copyWith(
            verifyFailureOrSucces: optionOf(Left(failure)),
          )),
          (success) => emit(
            state.copyWith(
              verifyFailureOrSucces: optionOf(Right(success)),
            ),
          ),
        );
      }
    });
  }
}
