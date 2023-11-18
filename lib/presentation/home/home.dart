import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';
import 'package:passvera/application/homeActionBloc/home_action_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                          modelNotValid: (_)=>'Model is not valid',
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
                (either) => either.fold((failure) {
                  showMySnackBar(
                    isError: true,
                    context: context,
                    message: failure.map(
                      unexpected: (e) => e.toString(),
                      insufficientPermission: (_) => 'Permission Denied',
                      keyAlreadyUsed: (_) => 'This key already used',
                      emptyKey: (_) => 'Parameters cannot be empty',
                      modelNotValid: (_)=>'Model is not valid',
                    ),
                  );
                }, (succes) {
                  Navigator.of(context).pop();
                  context.read<HomeBloc>().add(const HomeEvent.getAllValues());
                }),
              );
            },
          ),
        ],
        child: ScaffoldView(),
      ),
    );
  }
}

class ScaffoldView extends StatelessWidget {
  ScaffoldView({
    super.key,
  });
  final searchText = ValueNotifier<String>('');
  final isSearchMode = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      appBar: AppBarWithSearchSwitch(
        clearSearchIcon: Icons.stop,
        customIsSearchModeNotifier: isSearchMode,
        customTextNotifier: searchText,
        animation: (child) => AppBarAnimationSlideLeft(
            milliseconds: 150, withFade: true, percents: 1.0, child: child),
        appBarBuilder: (BuildContext context) {
          return AppBar(
            actions: const [
               AppBarSearchButton(),
            ],
            title: const Text(
              'PassVera',
            ),
          );
        },
      ),
      body: const HomeBody(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
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
            },
            controllerAppKey: controllerAppKey,
            controllerAppValue: controllerAppValue,
          );
        },
      ),
    );
  }
}
