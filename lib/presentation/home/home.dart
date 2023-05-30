import 'package:flutter/material.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                ),
              ),
            },
          );
        },
        child: Scaffold(
          body: HomeViewBody(),
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
        return state.isValuesLoading
            ? const CircularProgressIndicator()
            : state.values.isEmpty
                ? const Center(
                    child: Text(
                      'EMPTY',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                : ListView.builder(
                    itemCount: state.values.length,
                    itemBuilder: (context, index) {
                      ApplicationModel current = state.values[index];
                      return ListTile(
                        title: Text(current.key),
                      );
                    },
                  );
      },
    );
  }
}
