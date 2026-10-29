import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/theme.dart';

/// Content of a brand-colored surface (card, yellow dialog, tag-colored
/// screen): renders [child] with the light theme, so text, icons and
/// controls keep black ink on the colored fill in dark mode too.
///
/// In the light theme this is a pass-through. [enabled] lets a surface that
/// is only sometimes colored (a selected tile) keep the same widget tree
/// when it toggles, so its animations and ink effects survive.
class BrandSurface extends StatelessWidget {
  const BrandSurface({super.key, required this.child, this.enabled = true});

  final Widget child;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final current = Theme.of(context);
    if (current.brightness == Brightness.light) return child;

    final light = MyThemeData.light;
    return Theme(
      data: enabled ? light : current,
      child: DefaultTextStyle.merge(
        style: enabled ? TextStyle(color: light.colorScheme.onSurface) : null,
        child: child,
      ),
    );
  }
}
