import 'package:flutter/material.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/presentation/core/widgets/pass_container.dart';

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
        return PassContainerWidget(currentModel: current);
      },
    );
  }
}


