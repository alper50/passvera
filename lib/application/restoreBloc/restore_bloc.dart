import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/backup/backup_payload.dart';
import 'package:passvera/domain/backup/i_backup_repository.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/backup/remote_backup.dart';
import 'package:passvera/domain/backup/restore_mode.dart';
import 'package:passvera/domain/errors/backup_failures.dart';
import 'package:passvera/domain/i_authenticator_repository.dart';
import 'package:passvera/domain/i_keys_repository.dart';

part 'restore_event.dart';
part 'restore_state.dart';
part 'restore_bloc.freezed.dart';

/// Restore from Drive: account -> backup -> recovery key -> preview -> apply.
@injectable
class RestoreBloc extends Bloc<RestoreEvent, RestoreState> {
  RestoreBloc(this._backup, this._keys, this._authenticators)
      : super(RestoreState.initial()) {
    on<RestoreEvent>(
      (event, emit) async {
        emit(state.copyWith(failure: none()));
        await event.map(
          started: (_) => _checkVault(emit),
          connectRequested: (_) => _connect(emit),
          backupSelected: (e) async => emit(state.copyWith(selected: e.backup)),
          backupConfirmed: (_) async {
            if (state.selected != null) {
              emit(state.copyWith(step: RestoreStep.enterKey));
            }
          },
          keySubmitted: (e) => _open(e.words, emit),
          modeChanged: (e) async => emit(state.copyWith(mode: e.mode)),
          keepBackingUpChanged: (e) async =>
              emit(state.copyWith(keepBackingUp: e.keep)),
          restoreConfirmed: (_) => _restore(emit),
          backPressed: (_) async => emit(_back(state)),
        );
      },
      transformer: (events, mapper) => events.asyncExpand(mapper),
    );
  }

  final IBackupRepository _backup;
  final IKeysRepository _keys;
  final IAuthenticatorRepository _authenticators;

  Future<void> _checkVault(Emitter<RestoreState> emit) async {
    final passwords = await _keys.getAllValues();
    final codes = await _authenticators.getAll();
    // Unknown counts as non-empty: offering "replace" is the safe side.
    final hasEntries = passwords.fold((_) => true, (p) => p.isNotEmpty) ||
        codes.fold((_) => true, (c) => c.isNotEmpty);
    emit(state.copyWith(vaultHasEntries: hasEntries));
  }

  Future<void> _connect(Emitter<RestoreState> emit) async {
    emit(state.copyWith(isBusy: true));
    final connected = await _backup.connectAccount();
    await connected.fold(
      (f) async => emit(state.copyWith(isBusy: false, failure: some(f))),
      (account) async {
        final listed = await _backup.listRemoteBackups(account: account);
        listed.fold(
          (f) => emit(
            state.copyWith(isBusy: false, account: account, failure: some(f)),
          ),
          (backups) => emit(
            state.copyWith(
              isBusy: false,
              account: account,
              backups: backups,
              selected: backups.first,
              step: RestoreStep.chooseBackup,
            ),
          ),
        );
      },
    );
  }

  Future<void> _open(List<String> words, Emitter<RestoreState> emit) async {
    final account = state.account;
    final selected = state.selected;
    final key = RecoveryKey.fromWords(words);
    if (account == null || selected == null) return;
    if (key.isLeft()) {
      emit(state.copyWith(failure: key.fold(some, (_) => none())));
      return;
    }

    emit(state.copyWith(isBusy: true));
    final validKey = key.getOrElse(() => throw StateError('checked'));
    final opened = await _backup.openRemoteBackup(
      backup: selected,
      key: validKey,
      account: account,
    );
    opened.fold(
      (f) => emit(state.copyWith(isBusy: false, failure: some(f))),
      (payload) => emit(
        state.copyWith(
          isBusy: false,
          key: validKey,
          payload: payload,
          step: RestoreStep.preview,
        ),
      ),
    );
  }

  Future<void> _restore(Emitter<RestoreState> emit) async {
    final payload = state.payload;
    final key = state.key;
    final account = state.account;
    if (payload == null || key == null || account == null) return;

    emit(state.copyWith(isBusy: true));
    final restored = await _backup.restore(
      payload: payload,
      mode: state.vaultHasEntries ? state.mode : RestoreMode.merge,
    );
    if (restored.isLeft()) {
      emit(
        state.copyWith(
            isBusy: false, failure: restored.fold(some, (_) => none())),
      );
      return;
    }
    // Restoring means the user is past onboarding.
    await _keys.completeOnboard();
    if (state.keepBackingUp) {
      // Failure here is not fatal: the vault is restored and the sync retries.
      await _backup.enable(key: key, accountEmail: account);
    }
    emit(
      state.copyWith(
        isBusy: false,
        restoredCount: restored.getOrElse(() => 0),
        step: RestoreStep.done,
      ),
    );
  }

  static RestoreState _back(RestoreState s) => switch (s.step) {
        RestoreStep.enterKey => s.copyWith(step: RestoreStep.chooseBackup),
        RestoreStep.preview => s.copyWith(
            step: RestoreStep.enterKey,
            payload: null,
            key: null,
          ),
        _ => s,
      };
}
