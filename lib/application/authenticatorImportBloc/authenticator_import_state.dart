part of 'authenticator_import_bloc.dart';

@freezed
class AuthenticatorImportState with _$AuthenticatorImportState {
  const AuthenticatorImportState._();

  const factory AuthenticatorImportState({
    /// Importable accounts from every scanned batch, in scan order.
    required List<AuthenticatorEntry> candidates,

    /// Ids already in the vault; shown but not selectable.
    required Set<String> existingIds,
    required Set<String> selectedIds,
    required Set<int> scannedBatches,
    int? batchSize,
    int? batchId,
    required int skippedCount,
    required bool isSaving,
    required Option<Either<AuthenticatorFailure, Unit>> scanFailureOrSuccess,

    /// Right = number of accounts added.
    required Option<Either<AuthenticatorFailure, int>> importFailureOrSuccess,
  }) = _AuthenticatorImportState;

  factory AuthenticatorImportState.initial() => AuthenticatorImportState(
        candidates: const [],
        existingIds: const {},
        selectedIds: const {},
        scannedBatches: const {},
        skippedCount: 0,
        isSaving: false,
        scanFailureOrSuccess: none(),
        importFailureOrSuccess: none(),
      );

  bool get allBatchesScanned =>
      batchSize != null && scannedBatches.length >= batchSize!;
}
