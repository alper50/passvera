import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:passvera/application/authenticatorBloc/authenticator_bloc.dart';
import 'package:passvera/application/clipboardBloc/clipboard_bloc.dart';
import 'package:passvera/application/homeActionBloc/home_action_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/presentation/core/route/route.dart';
import 'package:passvera/presentation/core/utils/failure_messages.dart';
import 'package:passvera/presentation/core/widgets/clipboard_snackbar_listener.dart';
import 'package:passvera/presentation/core/widgets/form_dialog.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';
import 'package:passvera/presentation/home/authenticator/authenticator_body.dart';
import 'package:passvera/presentation/home/home_body.dart';
import 'package:passvera/presentation/home/widgets/home_mode_switch.dart';

@RoutePage()
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
        BlocProvider(
          create: (context) => getIt<ClipboardBloc>(),
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
                        message: failure.message,
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
                    message: failure.message,
                  );
                }, (succes) {
                  Navigator.of(context).pop();
                  context.read<HomeBloc>().add(const HomeEvent.getAllValues());
                }),
              );
            },
          ),
          ClipboardSnackBarListener(),
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
  // Pass every search notifier explicitly: the package otherwise falls back
  // to static globals, leaking the last query into a recreated HomeView.
  final searchText = ValueNotifier<String>('');
  final isSearchMode = ValueNotifier<bool>(false);
  final _searchHasText = ValueNotifier<bool>(false);
  final _searchSubmit = ValueNotifier<String>('');
  final _searchController = TextEditingController();
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
    // Search only applies to Secrets: leaving it must also drop the query,
    // otherwise the list comes back filtered with no visible search field.
    if (index != 0) {
      isSearchMode.value = false;
      _searchController.clear();
      searchText.value = '';
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    searchText.dispose();
    isSearchMode.dispose();
    _searchHasText.dispose();
    _searchSubmit.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _onFabPressed() async {
    if (_tabIndex == 1) {
      final added = await context.router.push<bool>(const QrScanRoute());
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
        customHasText: _searchHasText,
        customSubmitNotifier: _searchSubmit,
        customTextEditingController: _searchController,
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
                onPressed: () => context.router.push(const ProfileRoute()),
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
        // No hero flight needed, and the search app bar renders its own
        // default-tagged FAB while a query is active.
        heroTag: null,
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
