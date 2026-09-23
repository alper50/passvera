import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/clipboardBloc/clipboard_bloc.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/presentation/core/route/route.gr.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/my_small_button.dart';

class PassContainerWidget extends StatelessWidget {
  const PassContainerWidget({
    super.key,
    required this.currentModel,
  });

  final ApplicationModel currentModel;

  @override
  Widget build(BuildContext context) {
    final cardColor = Color(currentModel.colorValue);

    return InkWell(
      onTap: () => context.router.push(PassDetailView(model: currentModel)),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(15.0),
        constraints: const BoxConstraints(
          minWidth: 100.0,
          minHeight: 80,
        ),
        decoration: BoxDecoration(
          color: cardColor,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    currentModel.key,
                    style: MyTextStyles.headline2Bold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    currentModel.tag,
                    style: MyTextStyles.bodySmallBold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            MySmallButton(
              icon: const Icon(
                Icons.copy_rounded,
                size: 35,
              ),
              onTap: () => context.read<ClipboardBloc>().add(
                    ClipboardEvent.copySensitive(text: currentModel.value),
                  ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
