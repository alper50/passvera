// Rehearsal seeder: writes the fixture through the app's real services.
import 'package:flutter/material.dart';
import 'package:passvera/infrastructure/authenticator/authenticator_service.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';
import 'package:passvera/infrastructure/lock/lock_service.dart';
import 'package:passvera/injection.dart';

import 'fixture.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  final keys = getIt<KeysService>();

  await keys.storage.deleteAll();
  await keys.completeOnboard();
  for (final model in rehearsalPasswords) {
    (await keys.encryptValue(appModel: model)).fold((f) => throw f, (_) {});
  }
  for (final uri in rehearsalOtpUris) {
    (await getIt<AuthenticatorService>().addFromOtpAuthUri(uri))
        .fold((f) => throw f, (_) {});
  }
  (await getIt<LockService>().setPin(pin: rehearsalPin))
      .fold((f) => throw f, (_) {});

  final stored = await keys.storage.readAll();
  debugPrint('PASSVERA_SEED_DONE keys=${stored.length} '
      '${(stored.keys.toList()..sort()).join(',')}');
  runApp(MaterialApp(home: Center(child: Text('SEEDED ${stored.length}'))));
}
