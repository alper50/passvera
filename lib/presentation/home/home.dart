import 'package:flutter/material.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/domain/application_model.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
        ),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.isValuesLoading
                ? const MyCircularProgress()
                : state.values.isEmpty
                    ? const MyEmptyWidget()
                    : Column(
                        children: [
                          const Expanded(
                            flex: 3,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Apps',
                                style: MyTextStyles.headline1Bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: MyListContainer(
                              modelsList: state.values,
                            ),
                          ),
                          Expanded(flex: 8, child: Container()),
                        ],
                      );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
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
