import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

class MyEmptyWidget extends StatelessWidget {
  const MyEmptyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/animation/empty.json'),
          const Text(
            'Cant see any password here',
            style: MyTextStyles.headline3,
          ),
        ],
      ),
    );
  }
}
