import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

class MySmallButton extends StatelessWidget {
  MySmallButton({
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
      splashColor: Colors.black,
      focusColor: Colors.black,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(3.0),
            border: Border.all(
              color: Colors.black,
              width: 3.0,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
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
                    )
                  ],
                )),
    );
  }
}
