import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/lockBloc/lock_bloc.dart';
import 'package:passvera/application/onboardBloc/onboard_bloc.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/route/route.gr.dart';
import 'package:passvera/presentation/core/widgets/my_circular_progress.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<OnboardBloc>()..add(const OnboardEvent.checkOnboard()),
        ),
        BlocProvider(create: (_) => getIt<LockBloc>()),
      ],
      child: const SplashViewBody(),
    );
  }
}

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<OnboardBloc, OnboardState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              onboardNotShowed: (_) {
                AutoRouter.of(context).replace(const OnboardView());
              },
              onboarShowed: (_) {
                context
                    .read<LockBloc>()
                    .add(const LockEvent.checkPinStatus());
              },
            );
          },
        ),
        BlocListener<LockBloc, AppLockState>(
          listenWhen: (previous, current) =>
              previous.isLoading && !current.isLoading,
          listener: (context, state) {
            final router = AutoRouter.of(context);
            state.statusFailureOrSuccess.fold(
              () {
                if (state.isPinEnabled) {
                  router.replace(const LockView());
                } else {
                  router.replace(const HomeView());
                }
              },
              (_) => router.replace(const HomeView()),
            );
          },
        ),
      ],
      child: const Scaffold(
        body: MyCircularProgress(),
      ),
    );
  }
}
