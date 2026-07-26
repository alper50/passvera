part of 'authenticator_bloc.dart';

@immutable
abstract class AuthenticatorEvent {
  const AuthenticatorEvent();

  const factory AuthenticatorEvent.loadAll() = _LoadAll;
  const factory AuthenticatorEvent.addFromUri({required String uri}) =
      _AddFromUri;
  const factory AuthenticatorEvent.delete({required String id}) = _Delete;
  const factory AuthenticatorEvent.clearMessages() = _ClearMessages;
}

class _LoadAll extends AuthenticatorEvent {
  const _LoadAll();
}

class _AddFromUri extends AuthenticatorEvent {
  const _AddFromUri({required this.uri});
  final String uri;
}

class _Delete extends AuthenticatorEvent {
  const _Delete({required this.id});
  final String id;
}

class _ClearMessages extends AuthenticatorEvent {
  const _ClearMessages();
}
