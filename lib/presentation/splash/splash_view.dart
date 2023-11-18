import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/onboardBloc/onboard_bloc.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/widgets/my_circular_progress.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<OnboardBloc>()..add(const OnboardEvent.checkOnboard()),
      child: const SplashViewBody(),
    );
  }
}

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardBloc, OnboardState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          onboardNotShowed: (_) {
            AutoRouter.of(context).replaceNamed('/onboard-view');
          },
          onboarShowed: (_) {
            Future.delayed(const Duration(seconds: 3), () {
              AutoRouter.of(context).replaceNamed('/home-view');
            });
          },
        );
      },
      child: const Scaffold(
        body: MyCircularProgress(),
      ),
    );
  }
}
