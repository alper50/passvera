import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/home/widgets/pass_container.dart';

class MyListContainer extends StatelessWidget {
  final List<ApplicationModel> modelsList;
  const MyListContainer({
    super.key,
    required this.modelsList,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AppBarOnEditListener(
        builder: (BuildContext context, searchText, _) {
          final query = searchText.trim().toLowerCase();
          final filtered = query.isEmpty
              ? modelsList
              : modelsList
                  .where((model) => model.key.toLowerCase().contains(query))
                  .toList();

          if (filtered.isEmpty && query.isNotEmpty) {
            return const Center(
              child: Text(
                'No matches',
                style: MyTextStyles.headline3,
              ),
            );
          }

          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: filtered.length,
            itemBuilder: (context, index) {
              return PassContainerWidget(currentModel: filtered[index]);
            },
          );
        },
      ),
    );
  }
}
