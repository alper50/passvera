import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

class MySmallButton extends StatelessWidget {
  const MySmallButton({
    super.key,
    this.onTap,
    required this.icon,
    this.buttonText,
  });
  final Widget icon;
  final String? buttonText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async => onTap!(),
      splashColor: MyColors.ink,
      focusColor: MyColors.ink,
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.brand,
          borderRadius: BorderRadius.circular(3.0),
          border: Border.all(
            color: MyColors.ink,
            width: 3.0,
          ),
          boxShadow: const [
            BoxShadow(
              color: MyColors.inkSoft,
              offset: Offset(-3.0, 3.0),
              blurRadius: 5.0,
              blurStyle: BlurStyle.solid,
            ),
          ],
        ),
        child: buttonText == null
            ? icon
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  icon,
                  Text(
                    buttonText!,
                    style: MyTextStyles.bodyLarge,
                  ),
                  const SizedBox(),
                ],
              ),
      ),
    );
  }
}
