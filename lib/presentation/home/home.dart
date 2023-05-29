import 'package:flutter/material.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<HomeBloc>()..add(const HomeEvent.getAllValues()),
      child: Scaffold(
        body: BlocListener<HomeBloc, HomeState>(
          listener: (context, state) {
            state.maybeMap(
              keysLoadFail: (e){}, //TODO keysloadfail state listener
              orElse: () {},
            );
          },
          child: HomeViewBody(),
        ),
      ),
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          keysLoading: (_) => CircularProgressIndicator(),
          keysLoadSucces: (_) => Text('SUCCES'),
          keysLoadFail: (_) => Text('SUCCES'),
        );
      },
    );
  }
}
