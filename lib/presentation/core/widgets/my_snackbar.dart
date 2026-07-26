import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

void showMySnackBar(
    {required BuildContext context,
    required String message,
    bool isError = false}) {
  ScaffoldMessenger.of(context).showSnackBar(
    displaySnackBar(message: message, isError: isError),
  );
}

SnackBar displaySnackBar(
    {required String message,
    String? actionMessage,
    VoidCallback? onClick,
    bool isError = false}) {
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    elevation: 0,
    content: Text(
      message,
      style: MyTextStyles.bodyLarge.copyWith(color: MyColors.ink),
    ),
    action: (actionMessage != null)
        ? SnackBarAction(
            textColor: MyColors.surfaceWhite,
            label: actionMessage,
            onPressed: () {
              return onClick!();
            },
          )
        : null,
    duration: const Duration(seconds: 3),
    backgroundColor: isError ? MyColors.error : MyColors.brand,
  );
}
