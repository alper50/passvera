import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/my_circular_progress.dart';
import 'package:passvera/presentation/core/widgets/my_empty_widget.dart';
import 'package:passvera/presentation/core/widgets/my_list_container.dart';

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
                    const Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Apps',
                            style: MyTextStyles.headline1Bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: MyListContainer(
                        modelsList: succesState.values,
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 15.0,
                                spreadRadius: 30,
                                blurStyle: BlurStyle.normal,
                              ),
                            ],
                          ),
                        ))
                  ],
                );
              });
        },
      ),
    );
  }
}