import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/colors.dart';

class MyCustomContainer extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final double radius;
  final Widget? child;
  final Color? color;

  const MyCustomContainer({
    Key? key,
    this.padding,
    this.child,
    this.radius = 15,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? MyColors.brand,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: MyColors.ink,
          width: 3.0,
        ),
        boxShadow: const [
          BoxShadow(
            color: MyColors.inkSoft,
            offset: Offset(-5.0, 7.0),
            blurRadius: 5.0,
            blurStyle: BlurStyle.solid,
          ),
        ],
      ),
      padding: padding,
      child: child,
    );
  }
}
