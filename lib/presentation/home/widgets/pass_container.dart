import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/my_small_button.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';
import 'package:passvera/presentation/home/pass_detail_view.dart';

class PassContainerWidget extends StatelessWidget {
  const PassContainerWidget({
    super.key,
    required this.currentModel,
  });

  final ApplicationModel currentModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PassDetailView(model: currentModel))),
      child: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(15.0),
        constraints: BoxConstraints(
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
                  icon: Icon(
                    Icons.copy_rounded,
                    size: 35,
                  ),
                  onTap: () async {
                    await Clipboard.setData(
                        ClipboardData(text: currentModel.value));
                    showMySnackBar(
                        isError: false,
                        context: context,
                        message: currentModel.key + ' pasword copied');
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
