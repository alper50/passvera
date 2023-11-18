import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:passvera/domain/application_model.dart';
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
          final result =
              await keysRepository.getSingleValue(onboardKey: 'onboard');
          result.fold(
            (l) => emit(const OnboardState.onboardNotShowed()),
            (r) => emit(const OnboardState.onboarShowed()),
          );
        },
        setOnboard: (_SetOnboard value) async {
          ApplicationModel onboardModel =
              const ApplicationModel(key: 'onboard', value: 'true');
          await keysRepository.encryptValue(appModel: onboardModel);
        },
      );
    });
  }
}
