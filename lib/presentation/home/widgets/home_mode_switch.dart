import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/widgets/my_segmented_control.dart';

/// Compact Secrets / Authenticator switch in Passvera visual language.
/// Lives under the AppBar so the brand header stays untouched.
class HomeModeSwitch extends StatelessWidget {
  const HomeModeSwitch({
    super.key,
    required this.controller,
  });

  final TabController controller;

  static const _segments = [
    MySegment(label: 'Secrets', icon: Icons.lock_outline_rounded),
    MySegment(label: 'Codes', icon: Icons.pin_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    // The tab animation (not just the index): the highlight slides with a
    // tap and follows the finger while the pages are swiped.
    final animation = controller.animation!;
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
          child: MySegmentedControl(
            segments: _segments,
            selectedIndex: controller.index,
            position: animation.value,
            onSelected: controller.animateTo,
          ),
        );
      },
    );
  }
}
