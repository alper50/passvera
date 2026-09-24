import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

/// Selectable tag pill used by the entry form and the list filter.
class MyTagChip extends StatelessWidget {
  const MyTagChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: selected
              ? MyColors.ink
              : MyColors.surfaceWhite.withValues(alpha: 0.55),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: MyColors.ink, width: 2),
        ),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 180),
          style: MyTextStyles.bodySmallBold.copyWith(
            color: selected ? MyColors.surfaceWhite : MyColors.ink,
          ),
          child: Text(label),
        ),
      ),
    );
  }
}
