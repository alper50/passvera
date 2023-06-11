import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyCircularProgress extends StatelessWidget {
  const MyCircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/animation/loading-black.json'),
    );
  }
}
