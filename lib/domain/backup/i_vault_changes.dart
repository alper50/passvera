/// Fires after every successful write to the vault (passwords or
/// authenticator entries). Lets backup react without every BLoC knowing.
abstract class IVaultChanges {
  Stream<void> get changes;
}
