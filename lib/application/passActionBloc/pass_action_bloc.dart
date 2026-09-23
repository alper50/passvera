import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';
import 'package:passvera/domain/i_keys_repository.dart';
import 'package:passvera/domain/tag_palette.dart';

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
          emit(state.copyWith(deleteFailureOrSucces: none()));
          final result = await repository.deleteValue(appKey: e.pass.key);
          emit(
            state.copyWith(
              deleteFailureOrSucces: optionOf(result),
              updateFailureOrSucces: none(),
            ),
          );
        },
        updatePass: (e) async {
          emit(state.copyWith(updateFailureOrSucces: none()));
          if (e.pass.key.trim().isEmpty || e.pass.value.isEmpty) {
            emit(
              state.copyWith(
                updateFailureOrSucces:
                    optionOf(const Left(StorageFailure.emptyKey())),
                deleteFailureOrSucces: none(),
              ),
            );
            return;
          }

          final tag = e.pass.tag.trim();
          final result = await repository.updateSingleValue(
            model: e.pass.copyWith(
              tag: tag.isEmpty ? TagPalette.defaultTag : tag,
            ),
            oldKey: e.oldKey,
          );
          emit(
            state.copyWith(
              updateFailureOrSucces: optionOf(result),
              deleteFailureOrSucces: none(),
            ),
          );
        },
      );
    });
  }
}
