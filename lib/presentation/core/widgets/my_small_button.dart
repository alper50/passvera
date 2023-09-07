import 'package:flutter/material.dart';

class MySmallButton extends StatelessWidget {
  MySmallButton({
    super.key,
    this.onTap,
    required this.icon,
  });
  final Widget icon;
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
          child: icon),
    );
  }
}
