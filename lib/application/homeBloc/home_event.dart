part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllValues() = _GetKeys;
  const factory HomeEvent.encryptValue({required String key, required String value}) = _EncrpytValue;
  const factory HomeEvent.deleteValue({required String key}) = _DeleteValue;
}