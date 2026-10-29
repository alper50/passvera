import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

class MySegment {
  const MySegment({required this.label, required this.icon});

  final String label;
  final IconData icon;
}

/// Single-select pill switch in Passvera visual language (Secrets / Codes,
/// appearance). The selected segment is a brand surface.
class MySegmentedControl extends StatelessWidget {
  const MySegmentedControl({
    super.key,
    required this.segments,
    required this.selectedIndex,
    required this.onSelected,
  });

  final List<MySegment> segments;
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      height: 44,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: colors.surfaceWhite,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.ink, width: 3),
        boxShadow: [
          BoxShadow(
            color: colors.inkSoft,
            offset: const Offset(-3, 3),
            blurRadius: 0,
            blurStyle: BlurStyle.solid,
          ),
        ],
      ),
      child: Row(
        children: [
          for (var i = 0; i < segments.length; i++)
            Expanded(
              child: _Segment(
                segment: segments[i],
                selected: i == selectedIndex,
                onTap: () => onSelected(i),
              ),
            ),
        ],
      ),
    );
  }
}

class _Segment extends StatelessWidget {
  const _Segment({
    required this.segment,
    required this.selected,
    required this.onTap,
  });

  final MySegment segment;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ink = context.colors.ink;
    // Black on the yellow selection, theme ink otherwise.
    final foreground = selected ? MyColors.ink : ink.withValues(alpha: 0.45);
    return Material(
      color: MyColors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        splashColor: ink.withValues(alpha: 0.08),
        highlightColor: ink.withValues(alpha: 0.04),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOutCubic,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected ? MyColors.brand : MyColors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: selected ? MyColors.ink : MyColors.transparent,
              width: 2,
            ),
          ),
          // Shrinks the label instead of overflowing on narrow phones.
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(segment.icon, size: 18, color: foreground),
                const SizedBox(width: 6),
                Text(
                  segment.label,
                  style: MyTextStyles.bodyLargeBold.copyWith(
                    color: foreground,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
