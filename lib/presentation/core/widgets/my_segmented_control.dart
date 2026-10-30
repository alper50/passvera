import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

class MySegment {
  const MySegment({required this.label, required this.icon});

  final String label;
  final IconData icon;
}

/// Single-select pill switch in Passvera visual language (Secrets / Codes,
/// appearance). The selection is a brand-colored highlight that slides
/// between segments.
class MySegmentedControl extends StatelessWidget {
  const MySegmentedControl({
    super.key,
    required this.segments,
    required this.selectedIndex,
    required this.onSelected,
    this.position,
  });

  final List<MySegment> segments;
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  /// Where the highlight sits, in segments (0.5 = halfway between the first
  /// two). Pass it to follow a gesture, e.g. a swiped TabBarView; when null
  /// the highlight slides to [selectedIndex] by itself.
  final double? position;

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
      child: position != null
          ? _track(position!)
          : TweenAnimationBuilder<double>(
              tween: Tween(end: selectedIndex.toDouble()),
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOutCubic,
              builder: (context, value, _) => _track(value),
            ),
    );
  }

  Widget _track(double position) {
    final last = segments.length - 1;
    return Stack(
      fit: StackFit.expand,
      children: [
        Align(
          alignment: Alignment(last == 0 ? 0 : -1 + 2 * position / last, 0),
          child: FractionallySizedBox(
            widthFactor: 1 / segments.length,
            heightFactor: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: MyColors.brand,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: MyColors.ink, width: 2),
              ),
            ),
          ),
        ),
        Row(
          children: [
            for (var i = 0; i < segments.length; i++)
              Expanded(
                child: _Segment(
                  segment: segments[i],
                  // 1 under the highlight, fading to 0 one segment away.
                  emphasis: (1 - (position - i).abs()).clamp(0.0, 1.0),
                  onTap: () => onSelected(i),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class _Segment extends StatelessWidget {
  const _Segment({
    required this.segment,
    required this.emphasis,
    required this.onTap,
  });

  final MySegment segment;
  final double emphasis;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ink = context.colors.ink;
    // Black on the yellow highlight, faded theme ink away from it.
    final foreground =
        Color.lerp(ink.withValues(alpha: 0.45), MyColors.ink, emphasis)!;
    return Material(
      color: MyColors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        splashColor: ink.withValues(alpha: 0.08),
        highlightColor: ink.withValues(alpha: 0.04),
        child: Container(
          alignment: Alignment.center,
          // Same inset as the highlight's border.
          padding: const EdgeInsets.all(2),
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
