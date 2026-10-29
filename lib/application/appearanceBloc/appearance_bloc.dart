import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/appearance_mode.dart';
import 'package:passvera/domain/i_appearance_repository.dart';

part 'appearance_event.dart';
part 'appearance_state.dart';
part 'appearance_bloc.freezed.dart';

/// App-wide light/dark preference. The stored mode is read before the first
/// frame (see InitializeApp) and handed in as [initial], so the app never
/// flashes the wrong theme on start.
@injectable
class AppearanceBloc extends Bloc<AppearanceEvent, AppearanceState> {
  AppearanceBloc(this._repository, @factoryParam AppearanceMode? initial)
      : super(AppearanceState(mode: initial ?? AppearanceMode.system)) {
    on<AppearanceEvent>(
      (event, emit) async {
        await event.map(
          modeChanged: (e) async {
            final previous = state;
            if (e.mode == previous.mode) return;
            // Optimistic: the theme switches on tap.
            emit(AppearanceState(mode: e.mode));
            final saved = await _repository.saveMode(e.mode);
            if (saved.isLeft()) emit(previous);
          },
        );
      },
      // Sequential: a quick second tap must not be overwritten by the
      // revert of the first one.
      transformer: (events, mapper) => events.asyncExpand(mapper),
    );
  }

  final IAppearanceRepository _repository;
}
