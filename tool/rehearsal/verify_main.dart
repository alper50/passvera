// Rehearsal verifier: reads storage through the app's real services and
// compares every value with the fixture. Result goes to logcat.
import 'package:flutter/material.dart';
import 'package:passvera/infrastructure/authenticator/authenticator_service.dart';
import 'package:passvera/infrastructure/keys/keys_service.dart';
import 'package:passvera/infrastructure/lock/lock_service.dart';
import 'package:passvera/injection.dart';

import 'fixture.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  final problems = <String>[];

  final passwords = (await getIt<KeysService>().getAllValues())
      .fold((f) => throw f, (v) => v);
  for (final expected in rehearsalPasswords) {
    final actual = passwords.where((m) => m.key == expected.key).firstOrNull;
    if (actual != expected) problems.add('password ${expected.key}: $actual');
  }
  if (passwords.length != rehearsalPasswords.length) {
    problems.add('password count ${passwords.length}');
  }

  final otp = (await getIt<AuthenticatorService>().getAll())
      .fold((f) => throw f, (v) => v);
  final issuers = otp.map((e) => '${e.issuer}/${e.digits}/${e.algorithm.name}');
  if (issuers
          .toSet()
          .difference({'AWS/8/sha256', 'GitHub/6/sha1'}).isNotEmpty ||
      otp.length != 2) {
    problems.add('otp $issuers');
  }

  final lock = getIt<LockService>();
  if ((await lock.isPinSet()).getOrElse(() => false) != true) {
    problems.add('pin not set');
  }
  if ((await lock.verifyPin(pin: rehearsalPin)).isLeft()) {
    problems.add('pin does not verify');
  }
  if ((await getIt<KeysService>().getSingleValue(key: 'onboard')).isLeft()) {
    problems.add('onboard flag missing');
  }

  debugPrint(problems.isEmpty
      ? 'PASSVERA_VERIFY_OK passwords=${passwords.length} otp=${otp.length}'
      : 'PASSVERA_VERIFY_FAIL ${problems.join(' | ')}');
  runApp(MaterialApp(
    home: Center(child: Text(problems.isEmpty ? 'VERIFY OK' : 'VERIFY FAIL')),
  ));
}
