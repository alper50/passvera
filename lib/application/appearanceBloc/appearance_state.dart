part of 'appearance_bloc.dart';

@freezed
abstract class AppearanceState with _$AppearanceState {
  const factory AppearanceState({required AppearanceMode mode}) =
      _AppearanceState;
}
