import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/presentation/core/route/route.gr.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
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
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Colors.black,
            width: 3.0,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(-5.0, 7.0),
              blurRadius: 5.0,
              blurStyle: BlurStyle.solid,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              currentModel.key,
              style: MyTextStyles.headline2Bold,
            ),
            Row(
              children: [
                MySmallButton(
                  icon: const Icon(
                    Icons.copy_rounded,
                    size: 35,
                  ),
                  onTap: () async {
                    await Clipboard.setData(
                        ClipboardData(text: currentModel.value));
                    if (!context.mounted) return;
                    showMySnackBar(
                        isError: false,
                        context: context,
                        message: '${currentModel.key} password copied');
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
