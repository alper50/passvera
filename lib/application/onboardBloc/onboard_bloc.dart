import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/i_keys_repository.dart';

part 'onboard_event.dart';
part 'onboard_state.dart';
part 'onboard_bloc.freezed.dart';

@Injectable()
class OnboardBloc extends Bloc<OnboardEvent, OnboardState> {
  final IKeysRepository keysRepository;
  OnboardBloc(this.keysRepository) : super(const _Initial()) {
    on<OnboardEvent>((event, emit) async {
      await event.map(
        checkOnboard: (_) async {
          final result = await keysRepository.isOnboardCompleted();
          result.fold(
            // Unreadable storage must not route to onboarding: that flow
            // ends on Home and would skip the lock. The lock gate handles
            // storage errors (fail closed).
            (_) => emit(const OnboardState.onboarShowed()),
            (completed) => emit(
              completed
                  ? const OnboardState.onboarShowed()
                  : const OnboardState.onboardNotShowed(),
            ),
          );
        },
        setOnboard: (_) async {
          await keysRepository.completeOnboard();
        },
      );
    });
  }
}
