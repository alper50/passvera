import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/application/passActionBloc/pass_action_bloc.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/route/route.gr.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';

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
            () => null,
            (either) => either.fold(
              (failure) => showMySnackBar(
                context: context,
                message: failure.toString(),
              ),
              (succes) {
                AutoRouter.of(context).pushAndPopUntil(HomeView(),
                    predicate: (Route<dynamic> route) {
                  return false;
                });
                showMySnackBar(context: context, message: 'Succesfuly Deleted');
              },
            ),
          );
        },
        child: Scaffold(
          backgroundColor: Colors.yellow,
          body: PassDetailBody(model: model),
        ),
      ),
    );
  }
}

class PassDetailBody extends StatelessWidget {
  const PassDetailBody({
    super.key,
    required this.model,
  });

  final ApplicationModel model;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PassActionBloc, PassActionState>(
      builder: (context, state) {
        return Column(
          children: [
            Hero(
              transitionOnUserGestures: true,
              tag: model.key,
              child: Text(
                model.key,
                style: MyTextStyles.headline2,
              ),
            ),
            IconButton(
              onPressed: () {
                context
                    .read<PassActionBloc>()
                    .add(PassActionEvent.deletePass(pass: model));
              },
              icon: Icon(Icons.delete),
            )
          ],
        );
      },
    );
  }
}
