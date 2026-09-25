import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/backup/backup_status.dart';
import 'package:passvera/domain/backup/i_backup_repository.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/domain/errors/backup_failures.dart';
import 'package:passvera/domain/errors/lock_failures.dart';
import 'package:passvera/domain/i_lock_repository.dart';

part 'backup_settings_event.dart';
part 'backup_settings_state.dart';
part 'backup_settings_bloc.freezed.dart';

/// Backup screen: setup (account -> key -> confirmation -> enable), showing
/// the key again, testing it against the latest backup, turning backup off.
@injectable
class BackupSettingsBloc
    extends Bloc<BackupSettingsEvent, BackupSettingsState> {
  BackupSettingsBloc(this._backup, this._lock, {@ignoreParam Random? random})
      : _random = random ?? Random.secure(),
        super(BackupSettingsState.initial()) {
    on<BackupSettingsEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            failure: none(),
            lockFailure: none(),
            notice: none(),
          ),
        );
        await event.map(
          loaded: (_) => _refresh(emit),
          setupStarted: (_) => _startSetup(emit),
          wordsWrittenDown: (_) async =>
              emit(state.copyWith(setupStep: BackupSetupStep.confirmWords)),
          wordsRequested: (_) async {
            if (state.pendingKey != null) {
              emit(state.copyWith(setupStep: BackupSetupStep.showWords));
            }
          },
          confirmationSubmitted: (e) => _confirm(e.answers, emit),
          setupCancelled: (_) async => emit(_withoutSetup(state)),
          revealRequested: (e) => _reveal(e.pin, emit),
          revealHidden: (_) async => emit(state.copyWith(revealedKey: null)),
          testRequested: (e) => _test(e.words, emit),
          disableRequested: (e) => _disable(e.deleteRemote, emit),
        );
      },
      // One action at a time; the UI disables buttons while busy.
      transformer: (events, mapper) => events.asyncExpand(mapper),
    );
  }

  static const int confirmCount = 3;

  final IBackupRepository _backup;
  final ILockRepository _lock;
  final Random _random;

  Future<void> _refresh(Emitter<BackupSettingsState> emit) async {
    // Unknown PIN state counts as set (fail closed).
    final pinSet = (await _lock.isPinSet()).getOrElse(() => true);
    emit(state.copyWith(isPinSet: pinSet));
    final status = await _backup.status();
    status.fold(
      (f) => emit(state.copyWith(failure: some(f))),
      (s) => emit(state.copyWith(status: s)),
    );
  }

  Future<void> _startSetup(Emitter<BackupSettingsState> emit) async {
    emit(state.copyWith(isBusy: true));
    final connected = await _backup.connectAccount();
    connected.fold(
      (f) => emit(state.copyWith(isBusy: false, failure: some(f))),
      (account) {
        final positions = (List<int>.generate(RecoveryKey.wordCount, (i) => i)
              ..shuffle(_random))
            .take(confirmCount)
            .toList()
          ..sort();
        emit(
          state.copyWith(
            isBusy: false,
            setupAccount: account,
            pendingKey: RecoveryKey.generate(_random),
            confirmPositions: positions,
            setupStep: BackupSetupStep.showWords,
          ),
        );
      },
    );
  }

  Future<void> _confirm(
    List<String> answers,
    Emitter<BackupSettingsState> emit,
  ) async {
    final key = state.pendingKey;
    final account = state.setupAccount;
    if (key == null || account == null) return;

    final words = key.words;
    final correct = answers.length == state.confirmPositions.length &&
        [
          for (var i = 0; i < answers.length; i++)
            answers[i].trim().toLowerCase() == words[state.confirmPositions[i]],
        ].every((ok) => ok);
    if (!correct) {
      emit(
        state.copyWith(notice: some(BackupSettingsNotice.confirmationMismatch)),
      );
      return;
    }

    emit(state.copyWith(isBusy: true));
    final enabled = await _backup.enable(key: key, accountEmail: account);
    await _refresh(emit);
    final saved = state.status?.isEnabled ?? false;
    emit(
      _withoutSetup(state).copyWith(
        isBusy: false,
        notice: enabled.isRight()
            ? some(BackupSettingsNotice.enabled)
            : saved
                ? some(BackupSettingsNotice.enabledUploadPending)
                : none(),
        failure: enabled.isLeft() && !saved
            ? enabled.fold(some, (_) => none())
            : none(),
      ),
    );
  }

  Future<void> _reveal(String? pin, Emitter<BackupSettingsState> emit) async {
    final pinSet = (await _lock.isPinSet()).getOrElse(() => true);
    if (pinSet) {
      final verified = await _lock.verifyPin(pin: pin ?? '');
      if (verified.isLeft()) {
        emit(state.copyWith(lockFailure: verified.fold(some, (_) => none())));
        return;
      }
    }
    final key = await _backup.readRecoveryKey();
    key.fold(
      (f) => emit(state.copyWith(failure: some(f))),
      (k) => emit(state.copyWith(revealedKey: k)),
    );
  }

  Future<void> _test(
    List<String> words,
    Emitter<BackupSettingsState> emit,
  ) async {
    final account = state.status?.accountEmail;
    final key = RecoveryKey.fromWords(words);
    if (account == null || key.isLeft()) {
      emit(
        state.copyWith(
          failure: some(const BackupFailure.invalidRecoveryKey()),
        ),
      );
      return;
    }

    emit(state.copyWith(isBusy: true));
    final listed = await _backup.listRemoteBackups(account: account);
    final opened = await listed.fold(
      (f) async => Left<BackupFailure, Unit>(f),
      (backups) async => (await _backup.openRemoteBackup(
        backup: backups.first,
        key: key.getOrElse(() => throw StateError('checked')),
        account: account,
      ))
          .map((_) => unit),
    );
    emit(
      state.copyWith(
        isBusy: false,
        notice:
            opened.isRight() ? some(BackupSettingsNotice.testPassed) : none(),
        failure: opened.fold(some, (_) => none()),
      ),
    );
  }

  Future<void> _disable(
    bool deleteRemote,
    Emitter<BackupSettingsState> emit,
  ) async {
    emit(state.copyWith(isBusy: true));
    final result = await _backup.disable(deleteRemote: deleteRemote);
    await _refresh(emit);
    emit(
      state.copyWith(
        isBusy: false,
        revealedKey: null,
        notice: result.isRight() ? some(BackupSettingsNotice.disabled) : none(),
        failure: result.fold(some, (_) => none()),
      ),
    );
  }

  static BackupSettingsState _withoutSetup(BackupSettingsState s) => s.copyWith(
        setupStep: BackupSetupStep.none,
        setupAccount: null,
        pendingKey: null,
        confirmPositions: const [],
      );
}
