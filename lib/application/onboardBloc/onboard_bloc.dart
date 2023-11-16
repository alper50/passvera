import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'onboard_event.dart';
part 'onboard_state.dart';
part 'onboard_bloc.freezed.dart';

@Injectable()
class OnboardBloc extends Bloc<OnboardEvent, OnboardState> {
  OnboardBloc() : super(_Initial()) {
    on<OnboardEvent>((event, emit) async{
     await event.map(checkOnboard: (_){},);
    });
  }
}
