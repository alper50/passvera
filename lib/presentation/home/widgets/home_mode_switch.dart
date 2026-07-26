import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

/// Compact Secrets / Authenticator switch in Passvera visual language.
/// Lives under the AppBar so the brand header stays untouched.
class HomeModeSwitch extends StatelessWidget {
  const HomeModeSwitch({
    super.key,
    required this.controller,
  });

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        final index = controller.index;
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
          child: Container(
            height: 44,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: MyColors.surfaceWhite,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: MyColors.ink, width: 3),
              boxShadow: const [
                BoxShadow(
                  color: MyColors.inkSoft,
                  offset: Offset(-3, 3),
                  blurRadius: 0,
                  blurStyle: BlurStyle.solid,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: _Segment(
                    label: 'Secrets',
                    icon: Icons.lock_outline_rounded,
                    selected: index == 0,
                    onTap: () => controller.animateTo(0),
                  ),
                ),
                Expanded(
                  child: _Segment(
                    label: 'Codes',
                    icon: Icons.pin_outlined,
                    selected: index == 1,
                    onTap: () => controller.animateTo(1),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _Segment extends StatelessWidget {
  const _Segment({
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyColors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        splashColor: MyColors.ink.withValues(alpha: 0.08),
        highlightColor: MyColors.ink.withValues(alpha: 0.04),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 18,
                color: MyColors.ink.withValues(alpha: selected ? 1 : 0.45),
              ),
              const SizedBox(width: 6),
              Text(
                label,
                style: MyTextStyles.bodyLargeBold.copyWith(
                  color: MyColors.ink.withValues(alpha: selected ? 1 : 0.45),
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
