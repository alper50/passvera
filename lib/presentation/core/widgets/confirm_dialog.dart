import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/form_dialog.dart';

Future<bool> showConfirmDialog({
  required BuildContext context,
  required String title,
  required String message,
  String confirmLabel = 'Delete',
  String cancelLabel = 'Cancel',
}) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        actionsAlignment: MainAxisAlignment.center,
        backgroundColor: MyColors.brand,
        contentPadding: const EdgeInsets.all(24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(
            color: MyColors.ink,
            width: 4.0,
          ),
        ),
        title: Text(title, style: MyTextStyles.headline2Bold),
        content: Text(message, style: MyTextStyles.bodyLarge),
        actions: [
          MyFormButton(
            title: cancelLabel,
            onPressed: () => Navigator.of(dialogContext).pop(false),
          ),
          MyFormButton(
            title: confirmLabel,
            onPressed: () => Navigator.of(dialogContext).pop(true),
          ),
        ],
      );
    },
  );
  return result ?? false;
}
