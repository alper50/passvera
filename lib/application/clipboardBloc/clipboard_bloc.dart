import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/clipboard_constants.dart';
import 'package:passvera/domain/errors/clipboard_failures.dart';
import 'package:passvera/domain/i_clipboard_repository.dart';

part 'clipboard_event.dart';
part 'clipboard_state.dart';
part 'clipboard_bloc.freezed.dart';

@injectable
class ClipboardBloc extends Bloc<ClipboardEvent, ClipboardState> {
  final IClipboardRepository _clipboardRepository;

  ClipboardBloc(this._clipboardRepository) : super(ClipboardState.initial()) {
    on<ClipboardEvent>((event, emit) async {
      await event.map(
        copySensitive: (e) async {
          emit(state.copyWith(copyFailureOrSuccess: none()));
          final result = await _clipboardRepository.copySensitive(
            text: e.text,
            clearAfter: kSensitiveClipboardTtl,
          );
          emit(state.copyWith(copyFailureOrSuccess: optionOf(result)));
        },
      );
    });
  }
}
