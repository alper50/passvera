import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/screenCaptureBloc/screen_capture_bloc.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/backup/widgets/recovery_key_capture_scope.dart';

import '../application/fakes.dart';

void main() {
  late FakeScreenCaptureRepository repository;

  setUp(() {
    repository = FakeScreenCaptureRepository();
    getIt.registerFactory<ScreenCaptureBloc>(
      () => ScreenCaptureBloc(repository),
    );
  });

  tearDown(getIt.reset);

  Future<void> pumpScope(WidgetTester tester) => tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: RecoveryKeyCaptureScope(child: Text('twelve words')),
          ),
        ),
      );

  testWidgets('warns right after a screenshot', (tester) async {
    await pumpScope(tester);
    expect(find.text(RecoveryKeyCaptureScope.warning), findsNothing);

    repository.capture();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.text(RecoveryKeyCaptureScope.warning), findsOneWidget);
  });
}
