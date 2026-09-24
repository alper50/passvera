// UI regression suite: drives the real app (real DI, mocked secure storage,
// bundled fonts) through the main flows at three phone sizes, fails on any
// framework error (overflow, hero clash, ...) and compares golden images.
//
// Regenerate goldens after an intended visual change:
//   flutter test test/ui --update-goldens
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/main.dart';
import 'package:passvera/presentation/core/route/route.dart';

import '../domain/migration_payload_builder.dart';

const _sizes = <String, Size>{
  'small_320x568': Size(320, 568),
  'medium_375x667': Size(375, 667),
  'large_393x852': Size(393, 852),
};

/// Goldens are rendered at 2x: legible, but small enough for the repo.
const _pixelRatio = 2.0;

Future<void> _loadFonts() async {
  final quicksand = FontLoader('Quicksand');
  for (final weight in ['Regular', 'SemiBold', 'Bold']) {
    quicksand
        .addFont(rootBundle.load('assets/google_fonts/Quicksand-$weight.ttf'));
  }
  await quicksand.load();

  final flutterRoot = Platform.environment['FLUTTER_ROOT'];
  if (flutterRoot == null) {
    throw StateError('FLUTTER_ROOT is not set; run via `flutter test`.');
  }
  final icons = File(
    '$flutterRoot/bin/cache/artifacts/material_fonts/MaterialIcons-Regular.otf',
  ).readAsBytes().then(ByteData.sublistView);
  await (FontLoader('MaterialIcons')..addFont(icons)).load();
}

String _password(String key, String value, String tag, int color) =>
    ApplicationModel(key: key, value: value, tag: tag, colorValue: color)
        .toStorageValue();

final _onboarded = {
  'onboard':
      const ApplicationModel(key: 'onboard', value: 'true').toStorageValue(),
};

Map<String, String> _vault({bool pin = false}) => {
      ..._onboarded,
      if (pin) 'app_pin_hash': 'x',
      'Gmail':
          _password('Gmail', 'Sup3r-Secret-Passw0rd!', 'Personal', 0xFFFFEB3B),
      'Company VPN with a very long application name': _password(
          'Company VPN with a very long application name',
          'x',
          'Work',
          0xFF64B5F6),
      'Twitter': _password('Twitter', 'abc', 'Social', 0xFFE57373),
      'Bank': _password('Bank', '1234', 'Finance', 0xFF81C784),
      'Netflix': _password('Netflix', 'n', 'General', 0xFFBA68C8),
      'Steam': _password('Steam', 's', 'General', 0xFFFFB74D),
      'totp:github%7Calper%40example.com':
          '{"issuer":"GitHub","account":"alper@example.com",'
              '"secret":"JBSWY3DPEHPK3PXP","digits":6,"period":30,'
              '"algorithm":"SHA1"}',
      'totp:amazon%20web%20services%7Croot': '{"issuer":"Amazon Web Services",'
          '"account":"root-account-with-long-name@company.example.com",'
          '"secret":"JBSWY3DPEHPK3PXP","digits":8,"period":30,'
          '"algorithm":"SHA1"}',
    };

/// The camera plugin has no native side under `flutter test`. Answering every
/// call with `null` makes mobile_scanner settle deterministically into its
/// "permission denied" error state instead of throwing uncaught errors.
void _fakeCameraPlugin() {
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
  for (final channel in const [
    'dev.steenbakker.mobile_scanner/scanner/method',
    'dev.steenbakker.mobile_scanner/scanner/event',
    'dev.steenbakker.mobile_scanner/scanner/deviceOrientation',
  ]) {
    messenger.setMockMethodCallHandler(
        MethodChannel(channel), (_) async => null);
  }
}

/// Drives one app instance at one size and collects framework errors.
class _Session {
  _Session(this.tester, this.size);

  final WidgetTester tester;
  final String size;
  final errors = <String>[];

  Future<void> settle([int frames = 12]) async {
    for (var i = 0; i < frames; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
  }

  Future<void> tap(Finder finder) async {
    await tester.tap(finder.first);
    await settle(8);
  }

  Future<void> golden(String name) => expectLater(
        find.byType(MaterialApp),
        matchesGoldenFile('goldens/$size/$name.png'),
      );
}

void _flow(
  String name,
  Map<String, String> storage,
  Future<void> Function(_Session s) body,
) {
  for (final entry in _sizes.entries) {
    testWidgets('$name @ ${entry.key}', (tester) async {
      final session = _Session(tester, entry.key);
      final previousOnError = FlutterError.onError;
      FlutterError.onError = (details) =>
          session.errors.add(details.exceptionAsString().split('\n').first);
      tester.view
        ..physicalSize = entry.value * _pixelRatio
        ..devicePixelRatio = _pixelRatio;
      FlutterSecureStorage.setMockInitialValues(storage);

      try {
        await tester.pumpWidget(const MyApp());
        await session.settle(15);
        await body(session);
      } finally {
        await tester.pumpWidget(const SizedBox());
        await tester.pump(const Duration(seconds: 1));
        FlutterError.onError = previousOnError;
        tester.view.reset();
      }
      expect(session.errors, isEmpty, reason: 'framework errors');
    });
  }
}

void main() {
  setUpAll(() async {
    await _loadFonts();
    _fakeCameraPlugin();
    configureDependencies();
  });

  _flow('secrets: list, filter, add, detail, edit, delete', _vault(),
      (s) async {
    await s.golden('01_home');
    await s.tap(find.text('General'));
    await s.golden('02_home_filter_general');
    await s.tap(find.text('All'));

    await s.tap(find.byType(FloatingActionButton));
    await s.golden('03_add_dialog');
    await s.tester.drag(
      find.byType(SingleChildScrollView).last,
      const Offset(0, -700),
    );
    await s.settle(5);
    await s.golden('04_add_dialog_scrolled');
    await s.tester.enterText(find.byType(TextFormField).at(1), 'hunter2');
    s.tester.view.viewInsets = const FakeViewPadding(bottom: 300 * _pixelRatio);
    await s.settle(5);
    await s.golden('05_add_dialog_keyboard');
    s.tester.view.resetViewInsets();
    await s.settle(5);
    await s.tap(find.text('Close'));

    await s.tap(find.text('Bank'));
    await s.golden('06_detail');
    await s.tap(find.byIcon(Icons.visibility_off_outlined));
    await s.golden('07_detail_revealed');
    await s.tap(find.byIcon(Icons.edit_outlined));
    await s.golden('08_edit_dialog');
    await s.tap(find.text('Close'));
    await s.tap(find.text('Delete password'));
    await s.golden('09_delete_confirm');
    await s.tap(find.text('Cancel'));
    await s.tap(find.byIcon(Icons.arrow_back_ios_new_rounded));

    await s.tap(find.byIcon(Icons.search));
    await s.tester.enterText(find.byType(TextField).first, 'zzz');
    await s.settle(5);
    await s.golden('10_search_no_match');
  });

  _flow('codes tab (no golden: TOTP changes over time)', _vault(), (s) async {
    await s.tap(find.text('Codes'));
    expect(find.text('GitHub'), findsOneWidget);
    expect(find.text('Amazon Web Services'), findsOneWidget);
  });

  // Regression: a query left in the search bar used to render a FAB with the
  // default hero tag, clashing with Home's FAB on the next navigation.
  _flow('search, switch tab, navigate', _vault(), (s) async {
    await s.tap(find.byIcon(Icons.search));
    await s.tester.enterText(find.byType(TextField).first, 'gm');
    await s.settle(5);
    await s.tap(find.text('Codes'));
    await s.tap(find.byIcon(Icons.person_outline_rounded));
    await s.tap(find.byIcon(Icons.arrow_back_ios_new_rounded));
    await s.tap(find.text('Secrets'));
    await s.golden('11_search_cleared_after_tab_switch');
  });

  _flow('profile and PIN setup', _vault(), (s) async {
    await s.tap(find.byIcon(Icons.person_outline_rounded));
    await s.golden('12_profile');
    await s.tap(find.byIcon(Icons.lock_outline));
    await s.golden('13_profile_set_pin');
  });

  _flow('lock screen', _vault(pin: true), (s) async {
    await s.golden('14_lock');
  });

  _flow('empty vault', _onboarded, (s) async {
    await s.golden('15_empty_secrets');
    await s.tap(find.text('Codes'));
    await s.golden('16_empty_codes');
  });

  _flow('onboarding', const {}, (s) async {
    await s.golden('17_onboarding');
  });

  _flow('google authenticator import preview', _vault(), (s) async {
    final qr = migrationUri(migrationPayload(
      [
        otpParameters(secret: helloSecret, name: 'GitHub:alper@example.com'),
        otpParameters(secret: helloSecret, name: 'Slack:alper'),
        otpParameters(
            secret: helloSecret,
            name: 'Dropbox:me@mail.com',
            issuer: 'Dropbox'),
        otpParameters(secret: helloSecret, name: 'Old:hotp', type: 1),
      ],
      batchSize: 2,
      batchId: 5,
    ));
    AutoRouter.of(s.tester.element(find.byType(Scaffold).first))
        .push(AuthenticatorImportRoute(initialQr: qr));
    await s.settle(15);
    expect(find.text('Already in Passvera'), findsOneWidget);
    await s.golden('18_import_preview');
    await s.tap(find.text('Slack'));
    await s.golden('19_import_deselected');
  });
}
