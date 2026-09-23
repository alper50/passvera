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
    // Bottom inset keeps the message clear of the floating action button.
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 96),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset('assets/animation/empty.json', height: 180),
            const SizedBox(height: 16),
            Text(
              message,
              style: MyTextStyles.headline3,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
