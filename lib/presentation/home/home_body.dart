import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/widgets/my_circular_progress.dart';
import 'package:passvera/presentation/core/widgets/my_empty_widget.dart';
import 'package:passvera/presentation/home/widgets/my_list_container.dart';
import 'package:passvera/presentation/home/widgets/tag_filter_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => Container(),
              loadSuccesEmpty: (_) {
                return const MyEmptyWidget();
              },
              valuesLoading: (_) {
                return const MyCircularProgress();
              },
              loadSucces: (succesState) {
                return Column(
                  children: [
                    // One tag means nothing to filter by.
                    if (succesState.tags.length > 1)
                      TagFilterBar(
                        tags: succesState.tags,
                        selectedTag: succesState.selectedTag,
                      ),
                    Expanded(
                      child: MyListContainer(
                        modelsList: succesState.values,
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        height: 24,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.surface,
                              blurRadius: 15.0,
                              spreadRadius: 20,
                              blurStyle: BlurStyle.normal,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              });
        },
      ),
    );
  }
}
