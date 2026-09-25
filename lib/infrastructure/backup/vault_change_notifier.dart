import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:passvera/domain/backup/i_vault_changes.dart';

/// Repositories call [notify] after every successful vault write.
@lazySingleton
class VaultChangeNotifier implements IVaultChanges {
  final StreamController<void> _controller = StreamController.broadcast();

  @override
  Stream<void> get changes => _controller.stream;

  void notify() => _controller.add(null);
}

/// Exposes the same notifier instance as the domain interface: two separate
/// registrations would give listeners a different stream than the writers.
@module
abstract class VaultChangesModule {
  @lazySingleton
  IVaultChanges vaultChanges(VaultChangeNotifier notifier) => notifier;
}
