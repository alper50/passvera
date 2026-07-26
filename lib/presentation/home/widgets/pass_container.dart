import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/presentation/core/route/route.gr.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/utils/secure_clipboard.dart';
import 'package:passvera/presentation/core/widgets/my_small_button.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';

class PassContainerWidget extends StatelessWidget {
  const PassContainerWidget({
    super.key,
    required this.currentModel,
  });

  final ApplicationModel currentModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          context.router.push(PassDetailView(model: currentModel)),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(15.0),
        constraints: const BoxConstraints(
          minWidth: 100.0,
          minHeight: 80,
        ),
        decoration: BoxDecoration(
          color: MyColors.brand,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: MyColors.ink,
            width: 3.0,
          ),
          boxShadow: const [
            BoxShadow(
              color: MyColors.inkSoft,
              offset: Offset(-5.0, 7.0),
              blurRadius: 5.0,
              blurStyle: BlurStyle.solid,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                currentModel.key,
                style: MyTextStyles.headline2Bold,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 12),
            MySmallButton(
              icon: const Icon(
                Icons.copy_rounded,
                size: 35,
              ),
              onTap: () async {
                await SecureClipboard.copy(currentModel.value);
                if (!context.mounted) return;
                showMySnackBar(
                  isError: false,
                  context: context,
                  message:
                      '${currentModel.key} password copied (clears in 30s)',
                );
              },
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
