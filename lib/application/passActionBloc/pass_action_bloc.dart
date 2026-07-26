import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_keys_repository.dart';

part 'pass_action_event.dart';
part 'pass_action_state.dart';

@injectable
class PassActionBloc extends Bloc<PassActionEvent, PassActionState> {
  final IKeysRepository repository;
  PassActionBloc(this.repository) : super(PassActionState.initial()) {
    on<PassActionEvent>((event, emit) async {
      if (event is _DeletePass) {
        final result = await repository.deleteValue(appKey: event.pass.key);
        emit(
          state.copyWith(
            deleteFailureOrSucces: optionOf(result),
            updateFailureOrSucces: none(),
          ),
        );
      } else if (event is _UpdatePass) {
        final result = await repository.updateSingleValue(
          model: event.pass,
          oldKey: event.oldKey,
        );
        emit(
          state.copyWith(
            updateFailureOrSucces: optionOf(result),
            deleteFailureOrSucces: none(),
          ),
        );
      }
    });
  }
}
