part of 'authenticator_bloc.dart';

@freezed
sealed class AuthenticatorEvent with _$AuthenticatorEvent {
  const factory AuthenticatorEvent.loadAll() = _LoadAll;
  const factory AuthenticatorEvent.addFromUri({required String uri}) =
      _AddFromUri;
  const factory AuthenticatorEvent.delete({required String id}) = _Delete;
  const factory AuthenticatorEvent.clearMessages() = _ClearMessages;
}
