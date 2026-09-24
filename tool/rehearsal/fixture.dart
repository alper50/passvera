// Storage-migration rehearsal (dev tooling, never shipped).
//
// 1. Old build:  flutter build apk --debug -t tool/rehearsal/seed_main.dart
//    install fresh on an emulator and launch -> logcat PASSVERA_SEED_DONE
// 2. Install the old release APK over it (mirrors a real phone).
// 3. New build: install the new release APK with `adb install -r`, launch,
//    unlock with [rehearsalPin] and check the lists.
// 4. New build: flutter build apk --debug -t tool/rehearsal/verify_main.dart
//    install -r, launch -> logcat PASSVERA_VERIFY_OK
//
// The same fixture is written by seed_main.dart on the old plugin and checked
// by verify_main.dart on the new one.
import 'package:passvera/domain/application_model.dart';

const rehearsalPin = '1234';

const rehearsalPasswords = [
  ApplicationModel(
      key: 'Gmail', value: 'Sup3r-Secret-Passw0rd!', tag: 'Personal'),
  ApplicationModel(
      key: 'Bank',
      value: 'bank-ÄÖÜ-ünicode-🔐',
      tag: 'Finance',
      colorValue: 0xFF81C784),
  ApplicationModel(
      key: 'Company VPN',
      value: 'vpn pass with spaces',
      tag: 'Work',
      colorValue: 0xFF64B5F6),
];

const rehearsalOtpUris = [
  'otpauth://totp/GitHub:alper@example.com?secret=JBSWY3DPEHPK3PXP&issuer=GitHub',
  'otpauth://totp/AWS:root?secret=GEZDGNBVGY3TQOJQ&issuer=AWS&digits=8&algorithm=SHA256',
];
