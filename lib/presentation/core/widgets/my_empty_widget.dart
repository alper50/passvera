import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

class MyEmptyWidget extends StatelessWidget {
  const MyEmptyWidget({
    super.key,
    this.message = "Can't see any password here",
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/animation/empty.json'),
          Text(
            message,
            style: MyTextStyles.headline3,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
