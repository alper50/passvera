import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';

class MyListContainer extends StatefulWidget {
  final List<ApplicationModel> modelsList;
  const MyListContainer({
    super.key,
    required this.modelsList,
  });

  @override
  State<MyListContainer> createState() => _MyListContainerState();
}

class _MyListContainerState extends State<MyListContainer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: widget.modelsList.length,
      itemBuilder: (context, index) {
        ApplicationModel current = widget.modelsList[index];
        return Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(15.0),
          constraints: BoxConstraints(
            minWidth: 100.0,
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
                offset: Offset(-6.0, 6.0),
                blurRadius: 4.0,
                blurStyle: BlurStyle.solid,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                current.key,
                style: MyTextStyles.headline2Bold,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () async {
                      //TODO create an event
                      await Clipboard.setData(
                          ClipboardData(text: current.value));
                      showMySnackBar(
                          isError: false,
                          context: context,
                          message: current.key + ' pasword copied');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(3.0),
                        border: Border.all(
                          color: Colors.black,
                          width: 3.0,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(-3.0, 3.0),
                            blurRadius: 5.0,
                            blurStyle: BlurStyle.solid,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.copy_rounded,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () => context
                        .read<HomeBloc>()
                        .add(HomeEvent.deleteValue(appKey: current.key)),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(3.0),
                        border: Border.all(
                          color: Colors.black,
                          width: 3.0,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(-3.0, 3.0),
                            blurRadius: 5.0,
                            blurStyle: BlurStyle.solid,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.delete,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
