import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyCircularProgress extends StatelessWidget {
  const MyCircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Center(
      child: Lottie.asset(
        isDark
            ? 'assets/animation/loading-white.json'
            : 'assets/animation/loading-black.json',
        reverse: true,
      ),
    );
  }
}
