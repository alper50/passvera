import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/i_screen_capture_repository.dart';

part 'screen_capture_event.dart';
part 'screen_capture_state.dart';
part 'screen_capture_bloc.freezed.dart';

/// Screenshots on a recovery key screen for as long as the bloc lives:
/// closing it (leaving the screen, relocking) puts the block back.
@injectable
class ScreenCaptureBloc extends Bloc<ScreenCaptureEvent, ScreenCaptureState> {
  ScreenCaptureBloc(this._repository) : super(ScreenCaptureState.initial()) {
    on<ScreenCaptureEvent>((event, emit) async {
      await event.map(
        started: (_) async {
          // A screen left before this ran must never lift the block.
          if (_closing) return;
          _subscription ??= _repository.captures
              .listen((_) => add(const ScreenCaptureEvent.captured()));
          final allowed = await (_allowing ??= _repository.allowWithWarning());
          if (!_closing) emit(state.copyWith(isAllowed: allowed));
        },
        captured: (_) async =>
            emit(state.copyWith(captureCount: state.captureCount + 1)),
      );
    });
  }

  final IScreenCaptureRepository _repository;
  StreamSubscription<void>? _subscription;
  Future<bool>? _allowing;
  bool _closing = false;

  /// Blocks only after a pending allow has landed, so the two can never
  /// reach the platform in the wrong order.
  @override
  Future<void> close() async {
    _closing = true;
    await _subscription?.cancel();
    final allowing = _allowing;
    if (allowing != null) {
      await allowing;
      await _repository.block();
    }
    return super.close();
  }
}
