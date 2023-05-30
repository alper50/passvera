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
      body: BlocBuilder<HomeBloc, HomeState>(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<HomeBloc>().add(
                HomeEvent.encryptValue(key: 'testt', value: 'test'),
              );
        },
      ),
    );
  }
}
