import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/application/passActionBloc/pass_action_bloc.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/route/route.gr.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';
import 'package:passvera/presentation/home/passwordDetailView/pass_detail_view_body.dart';

class PassDetailView extends StatelessWidget {
  final ApplicationModel model;
  const PassDetailView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<PassActionBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<HomeBloc>(),
        ),
      ],
      child: BlocListener<PassActionBloc, PassActionState>(
        listener: (context, state) {
          return state.deleteFailureOrSucces.fold(
            () {},
            (either) => either.fold(
              (failure) => showMySnackBar(
                context: context,
                message: failure.toString(),
              ),
              (succes) {
                AutoRouter.of(context).pushAndPopUntil(const HomeView(),
                    predicate: (Route<dynamic> route) {
                  return false;
                });
                showMySnackBar(context: context, message: 'Succesfuly Deleted');
              },
            ),
          );
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                AutoRouter.of(context).pop();
              },
            ),
          ),
          backgroundColor: Colors.yellow,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: PassDetailBody(model: model),
          ),
        ),
      ),
    );
  }
}

