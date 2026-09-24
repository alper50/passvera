import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';
import 'package:passvera/domain/i_authenticator_repository.dart';
import 'package:passvera/domain/otp_migration_parser.dart';

part 'authenticator_import_event.dart';
part 'authenticator_import_state.dart';
part 'authenticator_import_bloc.freezed.dart';

/// Google Authenticator export import: collects batches, lets the user pick
/// accounts, then saves them.
@injectable
class AuthenticatorImportBloc
    extends Bloc<AuthenticatorImportEvent, AuthenticatorImportState> {
  final IAuthenticatorRepository _repository;

  AuthenticatorImportBloc(this._repository)
      : super(AuthenticatorImportState.initial()) {
    on<AuthenticatorImportEvent>(
      (event, emit) async {
        await event.map(
          started: (_) async {
            final result = await _repository.getAll();
            result.fold(
              (failure) => emit(
                state.copyWith(scanFailureOrSuccess: optionOf(Left(failure))),
              ),
              (entries) => emit(
                state.copyWith(existingIds: entries.map((e) => e.id).toSet()),
              ),
            );
          },
          qrScanned: (e) async {
            emit(state.copyWith(scanFailureOrSuccess: none()));
            final parsed = OtpMigrationParser.parse(e.raw);
            parsed.fold(
              (failure) => emit(
                state.copyWith(scanFailureOrSuccess: optionOf(Left(failure))),
              ),
              (batch) {
                if (state.batchId != null && batch.batchId != state.batchId) {
                  emit(
                    state.copyWith(
                      scanFailureOrSuccess: optionOf(
                        const Left(AuthenticatorFailure.mismatchedBatch()),
                      ),
                    ),
                  );
                  return;
                }
                if (state.scannedBatches.contains(batch.batchIndex)) return;

                final knownIds = state.candidates.map((c) => c.id).toSet();
                final fresh = batch.entries
                    .where((entry) => knownIds.add(entry.id))
                    .toList();
                emit(
                  state.copyWith(
                    candidates: [...state.candidates, ...fresh],
                    selectedIds: {
                      ...state.selectedIds,
                      ...fresh
                          .map((entry) => entry.id)
                          .where((id) => !state.existingIds.contains(id)),
                    },
                    scannedBatches: {
                      ...state.scannedBatches,
                      batch.batchIndex,
                    },
                    batchSize: batch.batchSize,
                    batchId: batch.batchId,
                    skippedCount: state.skippedCount + batch.skippedCount,
                    scanFailureOrSuccess: optionOf(const Right(unit)),
                  ),
                );
              },
            );
          },
          selectionToggled: (e) async {
            if (state.existingIds.contains(e.id)) return;
            final selected = {...state.selectedIds};
            if (!selected.remove(e.id)) selected.add(e.id);
            emit(state.copyWith(selectedIds: selected));
          },
          importConfirmed: (_) async {
            if (state.isSaving || state.selectedIds.isEmpty) return;
            emit(
              state.copyWith(isSaving: true, importFailureOrSuccess: none()),
            );
            final toImport = state.candidates
                .where((entry) => state.selectedIds.contains(entry.id))
                .toList();
            final result = await _repository.addEntries(toImport);
            emit(
              state.copyWith(
                isSaving: false,
                importFailureOrSuccess: optionOf(result),
              ),
            );
          },
        );
      },
      // Sequential: the first scan must see the existing ids from `started`.
      transformer: (events, mapper) => events.asyncExpand(mapper),
    );
  }
}
