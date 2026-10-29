import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/presentation/core/theme/brand_surface.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/theme.dart';

void main() {
  /// Text and icon colors, and the AppColors in scope, where [probe] sits.
  Future<(Color?, Color?, AppColors)> pumpProbe(
    WidgetTester tester, {
    required ThemeData theme,
    required Widget Function(Widget probe) wrap,
  }) async {
    late BuildContext probeContext;
    await tester.pumpWidget(
      MaterialApp(
        theme: theme,
        home: Scaffold(
          body: wrap(
            Builder(builder: (context) {
              probeContext = context;
              return const Text('x');
            }),
          ),
        ),
      ),
    );
    return (
      DefaultTextStyle.of(probeContext).style.color,
      IconTheme.of(probeContext).color,
      probeContext.colors,
    );
  }

  testWidgets('dark theme: content of a brand surface keeps black ink',
      (tester) async {
    final (text, icon, colors) = await pumpProbe(
      tester,
      theme: MyThemeData.dark,
      wrap: (probe) => BrandSurface(child: probe),
    );
    expect(text, MyColors.ink);
    expect(icon, MyColors.ink);
    expect(colors, AppColors.light);
  });

  testWidgets('dark theme: a disabled brand surface follows the theme',
      (tester) async {
    final (text, _, colors) = await pumpProbe(
      tester,
      theme: MyThemeData.dark,
      wrap: (probe) => BrandSurface(enabled: false, child: probe),
    );
    expect(text, AppColors.dark.ink);
    expect(colors, AppColors.dark);
  });

  testWidgets('light theme: a brand surface adds nothing to the tree',
      (tester) async {
    await pumpProbe(tester, theme: MyThemeData.light, wrap: (probe) => probe);
    final themesBefore = find.byType(Theme).evaluate().length;
    await pumpProbe(
      tester,
      theme: MyThemeData.light,
      wrap: (probe) => BrandSurface(child: probe),
    );
    expect(find.byType(Theme).evaluate().length, themesBefore);
  });
}
