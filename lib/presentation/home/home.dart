import 'package:flutter/material.dart';
import 'package:passvera/application/homeActionBloc/home_action_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/form_dialog.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';
import 'package:passvera/presentation/home/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<HomeBloc>()..add(const HomeEvent.getAllValues()),
        ),
        BlocProvider(
          create: (context) => getIt<HomeActionBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                loadFailed: (failure) {
                  failure.storageFailureOrSuccessOption.fold(
                    () {},
                    (failure) => {
                      showMySnackBar(
                        isError: true,
                        context: context,
                        message: failure.map(
                          unexpected: (e) => e.toString(),
                          insufficientPermission: (_) => 'Permission Denied',
                          keyAlreadyUsed: (_) => 'This key already used',
                          emptyKey: (_) => 'Parameters cannot be empty',
                        ),
                      ),
                    },
                  );
                },
              );
            },
          ),
          BlocListener<HomeActionBloc, HomeActionState>(
            listener: (context, state) {
              state.verifyFailureOrSucces.fold(
                () => null,
                (either) => either.fold(
                  (failure) {
                    showMySnackBar(
                      context: context,
                      message: failure.map(
                        unexpected: (e) => e.toString(),
                        insufficientPermission: (_) => 'Permission Denied',
                        keyAlreadyUsed: (_) => 'This key already used',
                        emptyKey: (_) => 'Parameters cannot be empty',
                      ),
                    );
                  },
                  (succes) => context
                      .read<HomeBloc>()
                      .add(const HomeEvent.getAllValues()),
                ),
              );
            },
          ),
        ],
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
            SizedBox(
              width: 24,
            ),
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
      body: const HomeBody(),
      floatingActionButton: FloatingActionButton(
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
              context.read<HomeActionBloc>().add(
                    HomeActionEvent.encryptValue(
                      appKey: controllerAppKey.text,
                      appValue: controllerAppValue.text,
                    ),
                  );
              Navigator.of(context).pop();
            },
            controllerAppKey: controllerAppKey,
            controllerAppValue: controllerAppValue,
          );
        },
      ),
    );
  }
}


