import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/clipboardBloc/clipboard_bloc.dart';
import 'package:passvera/application/passActionBloc/pass_action_bloc.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/route/route.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/utils/failure_messages.dart';
import 'package:passvera/presentation/core/widgets/clipboard_snackbar_listener.dart';
import 'package:passvera/presentation/core/widgets/my_snackbar.dart';
import 'package:passvera/presentation/home/passwordDetailView/pass_detail_view_body.dart';

@RoutePage()
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
          create: (context) => getIt<ClipboardBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          ClipboardSnackBarListener(),
          BlocListener<PassActionBloc, PassActionState>(
            listenWhen: (previous, current) =>
                previous.deleteFailureOrSucces != current.deleteFailureOrSucces,
            listener: (context, state) {
              state.deleteFailureOrSucces.fold(
                () {},
                (either) => either.fold(
                  (failure) => showMySnackBar(
                    isError: true,
                    context: context,
                    message: failure.message,
                  ),
                  (_) {
                    AutoRouter.of(context).pushAndPopUntil(
                      const HomeRoute(),
                      predicate: (_) => false,
                    );
                    showMySnackBar(
                      context: context,
                      message: 'Successfully Deleted',
                    );
                  },
                ),
              );
            },
          ),
          BlocListener<PassActionBloc, PassActionState>(
            listenWhen: (previous, current) =>
                previous.updateFailureOrSucces != current.updateFailureOrSucces,
            listener: (context, state) {
              state.updateFailureOrSucces.fold(
                () {},
                (either) => either.fold(
                  (failure) => showMySnackBar(
                    isError: true,
                    context: context,
                    message: failure.message,
                  ),
                  (_) {
                    AutoRouter.of(context).pushAndPopUntil(
                      const HomeRoute(),
                      predicate: (_) => false,
                    );
                    showMySnackBar(
                      context: context,
                      message: 'Successfully Updated',
                    );
                  },
                ),
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(model.colorValue),
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: MyColors.ink,
              ),
              onPressed: () {
                AutoRouter.of(context).pop();
              },
            ),
          ),
          backgroundColor: Color(model.colorValue),
          body: SafeArea(
            top: false,
            child: PassDetailBody(model: model),
          ),
        ),
      ),
    );
  }
}
