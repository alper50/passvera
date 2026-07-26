import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:passvera/application/authenticatorBloc/authenticator_bloc.dart';
import 'package:passvera/application/homeActionBloc/home_action_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/presentation/core/route/route.gr.dart';
import 'package:passvera/presentation/core/widgets/form_dialog.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';
import 'package:passvera/presentation/home/authenticator/authenticator_body.dart';
import 'package:passvera/presentation/home/home_body.dart';
import 'package:passvera/presentation/home/widgets/home_mode_switch.dart';

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
        BlocProvider(
          create: (context) => getIt<AuthenticatorBloc>()
            ..add(const AuthenticatorEvent.loadAll()),
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
                          modelNotValid: (_) => 'Model is not valid',
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
                      modelNotValid: (_) => 'Model is not valid',
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
        child: const ScaffoldView(),
      ),
    );
  }
}

class ScaffoldView extends StatefulWidget {
  const ScaffoldView({super.key});

  @override
  State<ScaffoldView> createState() => _ScaffoldViewState();
}

class _ScaffoldViewState extends State<ScaffoldView>
    with SingleTickerProviderStateMixin {
  final searchText = ValueNotifier<String>('');
  final isSearchMode = ValueNotifier<bool>(false);
  late final TabController _tabController;
  int _tabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onTabChanged);
  }

  void _onTabChanged() {
    if (_tabController.indexIsChanging) return;
    final index = _tabController.index;
    if (index == _tabIndex) return;
    setState(() => _tabIndex = index);
    if (index != 0 && isSearchMode.value) {
      isSearchMode.value = false;
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    searchText.dispose();
    isSearchMode.dispose();
    super.dispose();
  }

  Future<void> _onFabPressed() async {
    if (_tabIndex == 1) {
      final added = await context.router.push<bool>(const QrScanView());
      if (!mounted) return;
      if (added == true) {
        context
            .read<AuthenticatorBloc>()
            .add(const AuthenticatorEvent.loadAll());
      }
      return;
    }

    final controllerAppKey = TextEditingController();
    final controllerAppValue = TextEditingController();

    showFormDialog(
      context: context,
      onPressed: ({required tag, required colorValue}) {
        context.read<HomeActionBloc>().add(
              HomeActionEvent.encryptValue(
                appKey: controllerAppKey.text,
                appValue: controllerAppValue.text,
                tag: tag,
                colorValue: colorValue,
              ),
            );
      },
      controllerAppKey: controllerAppKey,
      controllerAppValue: controllerAppValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    final onSecretsTab = _tabIndex == 0;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBarWithSearchSwitch(
        clearSearchIcon: Icons.close_rounded,
        customIsSearchModeNotifier: isSearchMode,
        customTextNotifier: searchText,
        animation: (child) => AppBarAnimationSlideLeft(
          milliseconds: 320,
          withFade: true,
          percents: 0.08,
          switchInCurve: Curves.easeOutCubic,
          switchOutCurve: Curves.easeInCubic,
          background: null,
          child: child,
        ),
        appBarBuilder: (BuildContext context) {
          return AppBar(
            centerTitle: false,
            titleSpacing: 16,
            title: const Text('Passvera'),
            actions: [
              // Keep slot width stable so title/profile never jump on tab change.
              AnimatedOpacity(
                opacity: onSecretsTab ? 1 : 0,
                duration: const Duration(milliseconds: 180),
                curve: Curves.easeOutCubic,
                child: IgnorePointer(
                  ignoring: !onSecretsTab,
                  child: IconTheme(
                    data: IconTheme.of(context).copyWith(size: 28),
                    child: const AppBarSearchButton(),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.person_outline_rounded, size: 28),
                onPressed: () => context.router.push(const ProfileView()),
              ),
            ],
          );
        },
      ),
      body: Column(
        children: [
          HomeModeSwitch(controller: _tabController),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                HomeBody(),
                AuthenticatorBody(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onFabPressed,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 280),
          switchInCurve: Curves.easeOutCubic,
          switchOutCurve: Curves.easeInCubic,
          transitionBuilder: (child, animation) {
            final curved = CurvedAnimation(
              parent: animation,
              curve: Curves.easeOutCubic,
            );
            return FadeTransition(
              opacity: curved,
              child: ScaleTransition(
                scale: Tween<double>(begin: 0.72, end: 1).animate(curved),
                child: child,
              ),
            );
          },
          child: Icon(
            onSecretsTab ? Icons.add_rounded : Icons.qr_code_scanner_rounded,
            key: ValueKey(onSecretsTab),
            size: onSecretsTab ? 50 : 36,
          ),
        ),
      ),
    );
  }
}
