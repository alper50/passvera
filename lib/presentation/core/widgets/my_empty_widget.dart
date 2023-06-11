import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyEmptyWidget extends StatelessWidget {
  const MyEmptyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Text(
              'EMPTY',
              style: TextStyle(color: Colors.black),
            ),
            Lottie.asset('assets/animation/empty.json'),
          ],
        ),
      );
  }
}