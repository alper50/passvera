import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/presentation/home/widgets/tag_filter_bar.dart';

import '../application/fakes.dart';

void main() {
  const bank = ApplicationModel(key: 'Bank', value: 'x', tag: 'Finance');
  const chat = ApplicationModel(key: 'Chat', value: 'x', tag: 'Social');
  const jira = ApplicationModel(key: 'Jira', value: 'x', tag: 'Work');

  late FakeKeysRepository repository;
  late HomeBloc bloc;

  /// The bloc is created here, inside the test's fake-async zone, so its
  /// load completes on pump.
  Future<void> pumpBar(WidgetTester tester) async {
    bloc = HomeBloc(repository)..add(const HomeEvent.getAllValues());
    addTearDown(bloc.close);
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: BlocProvider.value(
            value: bloc,
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) => state.maybeMap(
                loadSucces: (s) =>
                    TagFilterBar(tags: s.tags, selectedTag: s.selectedTag),
                orElse: () => const SizedBox(),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  double left(WidgetTester tester, String label) =>
      tester.getTopLeft(find.text(label)).dx;

  setUp(() {
    repository = FakeKeysRepository()..storedValues = const [bank, chat, jira];
  });

  testWidgets('long-press and drag moves a tag and saves the order',
      (tester) async {
    await pumpBar(tester);
    expect(left(tester, 'Finance'), lessThan(left(tester, 'Work')));

    final gesture =
        await tester.startGesture(tester.getCenter(find.text('Work')));
    await tester.pump(kLongPressTimeout + const Duration(milliseconds: 50));
    // Past the left edge of the first tag: Work becomes first.
    final target = tester.getTopLeft(find.text('Finance')).dx - 10;
    final start = tester.getCenter(find.text('Work')).dx;
    for (var i = 0; i < 10; i++) {
      await gesture.moveBy(Offset((target - start) / 10, 0));
      await tester.pump(const Duration(milliseconds: 16));
    }
    await gesture.up();
    await tester.pumpAndSettle();

    expect(repository.tagOrder, ['Work', 'Finance', 'Social']);
    expect(left(tester, 'Work'), lessThan(left(tester, 'Finance')));
    expect(left(tester, 'All'), lessThan(left(tester, 'Work')),
        reason: '"All" stays first');
  });

  testWidgets('a tap still selects the tag', (tester) async {
    await pumpBar(tester);

    await tester.tap(find.text('Social'));
    await tester.pumpAndSettle();

    expect(
      bloc.state.maybeMap(loadSucces: (s) => s.selectedTag, orElse: () => ''),
      'Social',
    );
    expect(repository.tagOrder, isEmpty, reason: 'no reorder on tap');
  });
}
