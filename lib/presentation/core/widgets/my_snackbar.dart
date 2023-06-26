import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

void showMySnackBar({required BuildContext context,required String message, bool isError=false}) {
  ScaffoldMessenger.of(context).showSnackBar(
    displaySnackBar(message: message,isError: isError),
  );
}

SnackBar displaySnackBar(
    {required String message, String? actionMessage, VoidCallback? onClick, bool isError=false}) {
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    elevation: 5.0,
    content: Text(
      message,
      style: MyTextStyles.bodyLarge.copyWith(color: Colors.black)
    ),
    action: (actionMessage != null)
        ? SnackBarAction(
            textColor: Colors.white,
            label: actionMessage,
            onPressed: () {
              return onClick!();
            },
          )
        : null,
    duration: Duration(seconds: 4),
    backgroundColor: Colors.yellow, //isError? MyColors.errorColor: MyColors.primaryColor, TODO color constants
  );
}
