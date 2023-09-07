import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_keys_repository.dart';

part 'pass_action_event.dart';
part 'pass_action_state.dart';
part 'pass_action_bloc.freezed.dart';

@injectable
class PassActionBloc extends Bloc<PassActionEvent, PassActionState> {
  final IKeysRepository repository;
  PassActionBloc(this.repository) : super(PassActionState.initial()) {
    on<PassActionEvent>((event, emit) async {
      await event.map(
        deletePass: (e) async {
          final result = await repository.deleteValue(appKey: e.pass.key);
          emit(
            state.copyWith(
              deleteFailureOrSucces: optionOf(result),
            ),
          );
        },
        updatePass: (e) async {
          final result = await repository.updateSingleValue(model: e.pass,oldKey: e.oldKey);
          emit(
            state.copyWith(
              // updateFailureOrSucces: optionOf(result),
              // deleteFailureOrSucces: none()
              deleteFailureOrSucces: optionOf(result),
            ),
          );
        },
      );
    });
  }
}
