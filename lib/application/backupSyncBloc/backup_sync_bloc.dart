import 'dart:async';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/backup/backup_status.dart';
import 'package:passvera/domain/backup/i_backup_repository.dart';
import 'package:passvera/domain/backup/i_vault_changes.dart';
import 'package:passvera/domain/errors/backup_failures.dart';

part 'backup_sync_event.dart';
part 'backup_sync_state.dart';
part 'backup_sync_bloc.freezed.dart';

/// App-root automatic backup: every vault change is marked pending and
/// uploaded after a short quiet period; failures retry with backoff while
/// the app runs, and pending changes are retried on the next start/resume.
@injectable
class BackupSyncBloc extends Bloc<BackupSyncEvent, BackupSyncState> {
  BackupSyncBloc(
    this._repository,
    this._changes, {
    @ignoreParam this.debounce = const Duration(seconds: 5),
    @ignoreParam this.retryBase = const Duration(seconds: 30),
    @ignoreParam this.retryMax = const Duration(minutes: 30),
  }) : super(BackupSyncState.initial()) {
    on<BackupSyncEvent>((event, emit) async {
      await event.map(
        started: (_) async {
          _subscription ??= _changes.changes
              .listen((_) => add(const BackupSyncEvent.vaultChanged()));
          await _refresh(emit);
          _uploadIfPending();
        },
        vaultChanged: (_) async {
          await _repository.markPendingChanges();
          await _refresh(emit);
          if (state.isEnabled) _schedule(debounce);
        },
        appResumed: (_) async {
          await _refresh(emit);
          _uploadIfPending();
        },
        syncRequested: (_) async {
          _retryAttempt = 0;
          add(const BackupSyncEvent.uploadDue());
        },
        statusRefreshRequested: (_) => _refresh(emit),
        uploadDue: (_) => _upload(emit),
      );
    });
  }

  final IBackupRepository _repository;
  final IVaultChanges _changes;
  final Duration debounce;
  final Duration retryBase;
  final Duration retryMax;

  StreamSubscription<void>? _subscription;
  Timer? _timer;
  bool _rerunAfterUpload = false;
  int _retryAttempt = 0;

  Future<void> _upload(Emitter<BackupSyncState> emit) async {
    _timer?.cancel();
    if (!state.isEnabled) return;
    if (state.isUploading) {
      _rerunAfterUpload = true;
      return;
    }

    emit(state.copyWith(isUploading: true));
    final result = await _repository.backupNow();
    await _refresh(emit);
    emit(
      state.copyWith(
        isUploading: false,
        lastFailure: result.fold(some, (_) => none()),
      ),
    );

    result.fold(
      (failure) {
        if (_isRetryable(failure)) {
          _retryAttempt++;
          _schedule(_backoff());
        }
      },
      (_) {
        _retryAttempt = 0;
        if (_rerunAfterUpload) {
          _rerunAfterUpload = false;
          add(const BackupSyncEvent.uploadDue());
        }
      },
    );
  }

  Future<void> _refresh(Emitter<BackupSyncState> emit) async {
    final status = await _repository.status();
    status.fold((_) {}, (s) => emit(state.copyWith(status: s)));
  }

  void _uploadIfPending() {
    final status = state.status;
    if (status != null &&
        status.isEnabled &&
        status.hasPendingChanges &&
        !(_timer?.isActive ?? false)) {
      add(const BackupSyncEvent.uploadDue());
    }
  }

  void _schedule(Duration delay) {
    _timer?.cancel();
    _timer = Timer(delay, () => add(const BackupSyncEvent.uploadDue()));
  }

  Duration _backoff() {
    final factor = pow(2, min(_retryAttempt - 1, 10)).toInt();
    final delay = retryBase * factor;
    return delay > retryMax ? retryMax : delay;
  }

  /// Needs the user (sign in again, configure the build): no auto retry.
  static bool _isRetryable(BackupFailure failure) => failure.maybeMap(
        authorizationRequired: (_) => false,
        notConfigured: (_) => false,
        notEnabled: (_) => false,
        orElse: () => true,
      );

  @override
  Future<void> close() async {
    _timer?.cancel();
    await _subscription?.cancel();
    return super.close();
  }
}
