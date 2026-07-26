import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/domain/i_authenticator_repository.dart';

part 'authenticator_event.dart';
part 'authenticator_state.dart';

@injectable
class AuthenticatorBloc extends Bloc<AuthenticatorEvent, AuthenticatorState> {
  AuthenticatorBloc(this._repository) : super(AuthenticatorState.initial()) {
    on<AuthenticatorEvent>((event, emit) async {
      if (event is _LoadAll) {
        emit(state.copyWith(isLoading: true, loadFailureOrSuccess: none()));
        final result = await _repository.getAll();
        result.fold(
          (failure) => emit(
            state.copyWith(
              isLoading: false,
              entries: const [],
              loadFailureOrSuccess: optionOf(Left(failure)),
            ),
          ),
          (entries) => emit(
            state.copyWith(
              isLoading: false,
              entries: entries,
              loadFailureOrSuccess: optionOf(Right(entries)),
            ),
          ),
        );
      } else if (event is _AddFromUri) {
        emit(
          state.copyWith(
            isLoading: true,
            addFailureOrSuccess: none(),
          ),
        );
        final result = await _repository.addFromOtpAuthUri(event.uri);
        await result.fold(
          (failure) async {
            emit(
              state.copyWith(
                isLoading: false,
                addFailureOrSuccess: optionOf(Left(failure)),
              ),
            );
          },
          (_) async {
            final refreshed = await _repository.getAll();
            refreshed.fold(
              (failure) => emit(
                state.copyWith(
                  isLoading: false,
                  addFailureOrSuccess: optionOf(Left(failure)),
                ),
              ),
              (entries) => emit(
                state.copyWith(
                  isLoading: false,
                  entries: entries,
                  addFailureOrSuccess: optionOf(const Right(unit)),
                ),
              ),
            );
          },
        );
      } else if (event is _Delete) {
        emit(
          state.copyWith(
            isLoading: true,
            deleteFailureOrSuccess: none(),
          ),
        );
        final result = await _repository.delete(id: event.id);
        await result.fold(
          (failure) async {
            emit(
              state.copyWith(
                isLoading: false,
                deleteFailureOrSuccess: optionOf(Left(failure)),
              ),
            );
          },
          (_) async {
            final refreshed = await _repository.getAll();
            refreshed.fold(
              (failure) => emit(
                state.copyWith(
                  isLoading: false,
                  deleteFailureOrSuccess: optionOf(Left(failure)),
                ),
              ),
              (entries) => emit(
                state.copyWith(
                  isLoading: false,
                  entries: entries,
                  deleteFailureOrSuccess: optionOf(const Right(unit)),
                ),
              ),
            );
          },
        );
      } else if (event is _ClearMessages) {
        emit(
          state.copyWith(
            addFailureOrSuccess: none(),
            deleteFailureOrSuccess: none(),
            loadFailureOrSuccess: none(),
          ),
        );
      }
    });
  }

  final IAuthenticatorRepository _repository;
}
