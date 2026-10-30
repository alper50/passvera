import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/widgets/my_segmented_control.dart';
import 'package:passvera/presentation/home/widgets/home_mode_switch.dart';

void main() {
  final highlight = find.byWidgetPredicate(
    (w) =>
        w is DecoratedBox &&
        w.decoration is BoxDecoration &&
        (w.decoration as BoxDecoration).color == MyColors.brand,
  );

  Rect highlightRect(WidgetTester tester) => tester.getRect(highlight);

  testWidgets('home: the highlight follows the pages while they are swiped',
      (tester) async {
    final controller = TabController(length: 2, vsync: const TestVSync());
    addTearDown(controller.dispose);
    await tester.pumpWidget(
      MaterialApp(home: Scaffold(body: HomeModeSwitch(controller: controller))),
    );
    final onSecrets = highlightRect(tester);
    expect(onSecrets.height, greaterThan(30), reason: 'fills the track');
    expect(
      tester.getRect(find.text('Secrets')).center.dx,
      inInclusiveRange(onSecrets.left, onSecrets.right),
    );

    // What TabBarView does mid-swipe: the animation sits between the tabs.
    controller.offset = 0.5;
    await tester.pump();
    final midSwipe = highlightRect(tester).center.dx;

    controller.offset = 0;
    controller.index = 1;
    await tester.pumpAndSettle();
    final onCodes = highlightRect(tester);
    expect(
      tester.getRect(find.text('Codes')).center.dx,
      inInclusiveRange(onCodes.left, onCodes.right),
    );
    expect(
      midSwipe,
      moreOrLessEquals(
        (onSecrets.center.dx + onCodes.center.dx) / 2,
        epsilon: 1,
      ),
    );
  });

  testWidgets('without a position the highlight slides to the selection',
      (tester) async {
    var selected = 0;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: StatefulBuilder(
            builder: (context, setState) => MySegmentedControl(
              segments: const [
                MySegment(label: 'System', icon: Icons.brightness_auto),
                MySegment(label: 'Light', icon: Icons.light_mode),
                MySegment(label: 'Dark', icon: Icons.dark_mode),
              ],
              selectedIndex: selected,
              onSelected: (i) => setState(() => selected = i),
            ),
          ),
        ),
      ),
    );
    final start = highlightRect(tester).center.dx;

    await tester.tap(find.text('Dark'));
    await tester.pump(); // rebuild with the new selection; the slide starts
    await tester.pump(const Duration(milliseconds: 80));
    final midway = highlightRect(tester).center.dx;

    await tester.pumpAndSettle();
    final end = highlightRect(tester);
    expect(midway, greaterThan(start + 1));
    expect(midway, lessThan(end.center.dx - 1));
    expect(
      tester.getRect(find.text('Dark')).center.dx,
      inInclusiveRange(end.left, end.right),
    );
  });
}
