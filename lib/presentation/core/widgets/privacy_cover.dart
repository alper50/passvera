import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

/// Full-screen brand cover that hides vault content while the app is not
/// in the foreground (app switcher snapshot, resume before relock).
class PrivacyCover extends StatelessWidget {
  const PrivacyCover({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: MyColors.brand,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.lock_outline_rounded, size: 64, color: MyColors.ink),
            SizedBox(height: 12),
            Text('Passvera', style: MyTextStyles.headline1Bold),
          ],
        ),
      ),
    );
  }
}
