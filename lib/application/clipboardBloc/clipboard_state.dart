part of 'clipboard_bloc.dart';

@freezed
class ClipboardState with _$ClipboardState {
  const factory ClipboardState({
    required Option<Either<ClipboardFailure, Unit>> copyFailureOrSuccess,
  }) = _ClipboardState;

  factory ClipboardState.initial() => ClipboardState(
        copyFailureOrSuccess: none(),
      );
}
