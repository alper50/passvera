import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/presentation/home/widgets/pass_container.dart';

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
    return Material(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.modelsList.length,
        itemBuilder: (context, index) {
          ApplicationModel current = widget.modelsList[index];
          return AppBarOnEditListener(
            child: PassContainerWidget(currentModel: current),
            builder: (BuildContext context, searchText, child) {
              return Visibility(
                visible: current.key.contains(searchText),
                child: child!,
              );
            }, 
          );
        },
      ),
    );
  }
}
