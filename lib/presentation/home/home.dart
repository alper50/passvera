import 'package:flutter/material.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/form_dialog.dart';
import 'package:passvera/presentation/core/widgets/my_circular_progress.dart';
import 'package:passvera/presentation/core/widgets/my_empty_widget.dart';
import 'package:passvera/presentation/core/widgets/my_list_container.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<HomeBloc>()..add(const HomeEvent.getAllValues()),
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          state.storageFailureOrSuccessOption.fold(
            () {},
            (failure) => {
              showMySnackBar(
                isError: true,
                context: context,
                message: failure.map(
                  unexpected: (e) => e.toString(),
                  insufficientPermission: (_) => 'Permission Denied',
                  keyAlreadyUsed: (_) => 'This key already used',
                ),
              ),
            },
          );
        },
        child: const ScaffoldView(),
      ),
    );
  }
}

class ScaffoldView extends StatelessWidget {
  const ScaffoldView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              'PassVera',
              style: MyTextStyles.headline3Bold.copyWith(color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.isValuesLoading
                ? const MyCircularProgress()
                : state.values.isEmpty
                    ? const MyEmptyWidget()
                    : Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Apps',
                                style: MyTextStyles.headline1Bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: MyListContainer(
                              modelsList: state.values,
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
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8.0,
        highlightElevation: 12.0,
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: BorderSide(
            color: Colors.black,
            width: 3.0,
          ),
        ),
        child: Icon(
          Icons.add_rounded,
          size: 50,
        ),
        onPressed: () {
          var controllerAppKey = TextEditingController();
          var controllerAppValue = TextEditingController();

          return showFormDialog(
            context: context,
            onPressed: () {
              context.read<HomeBloc>().add(
                    HomeEvent.encryptValue(
                      appKey: controllerAppKey.text,
                      appValue: controllerAppValue.text,
                    ),
                  );
              Navigator.of(context).pop();
              context.read<HomeBloc>().add(
                    HomeEvent.getAllValues(),
                  );
            },
            controllerAppKey: controllerAppKey,
            controllerAppValue: controllerAppValue,
          );
        },
      ),
    );
  }
}
