import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/application/passActionBloc/pass_action_bloc.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/route/route.gr.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/form_dialog.dart';
import 'package:passvera/presentation/core/widgets/my_small_button.dart';
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

class PassDetailBody extends StatefulWidget {
  const PassDetailBody({
    super.key,
    required this.model,
  });

  final ApplicationModel model;

  @override
  State<PassDetailBody> createState() => _PassDetailBodyState();
}

class _PassDetailBodyState extends State<PassDetailBody> {
  bool isEyeOpen = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PassActionBloc, PassActionState>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'App:  ${widget.model.key}',
                    style: MyTextStyles.headline2,
                  ),
                  MySmallButton(
                      icon: const Icon(
                        Icons.edit_outlined,
                      ),
                      onTap: () {
                        var controllerAppKey =
                            TextEditingController(text: widget.model.key);
                        var controllerAppValue =
                            TextEditingController(text: widget.model.value);

                        showFormDialog(
                            title: 'What Changed :)',
                            controllerAppKey: controllerAppKey,
                            controllerAppValue: controllerAppValue,
                            context: context,
                            onPressed: () {
                              return context.read<PassActionBloc>().add(
                                    PassActionEvent.updatePass(
                                      pass: ApplicationModel(
                                        key: controllerAppKey.text,
                                        value: controllerAppValue.text,
                                      ),
                                      oldKey: widget.model.key,
                                    ),
                                  );
                            });
                      }),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isEyeOpen
                      ? RichText(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            text: 'Password: ',
                            style: MyTextStyles.headline2,
                            children: [
                              TextSpan(
                                text: widget.model.value,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        )
                      : const Text(
                          'Password:  *****',
                          style: MyTextStyles.headline2,
                        ),
                  MySmallButton(
                    icon: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (child, anim) => RotationTransition(
                              turns: child.key == const ValueKey('icon1')
                                  ? Tween<double>(begin: 1, end: 0.0)
                                      .animate(anim)
                                  : Tween<double>(begin: 0.0, end: 1)
                                      .animate(anim),
                              child:
                                  FadeTransition(opacity: anim, child: child),
                            ),
                        child: isEyeOpen
                            ? const Icon(
                                Icons.remove_red_eye_outlined,
                                key: ValueKey('icon1'),
                              )
                            : const Icon(
                                Icons.elderly_outlined,
                                key: ValueKey(
                                  'icon2',
                                ),
                              )),
                    onTap: () {
                      changeEyeState();
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'If you want to Delete  ---->  ',
                    style: MyTextStyles.headline3Bold,
                  ),
                  MySmallButton(
                    icon: const Icon(
                      Icons.delete_outlined,
                      size: 45,
                    ),
                    onTap: () => context.read<PassActionBloc>().add(
                          PassActionEvent.deletePass(pass: widget.model),
                        ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void changeEyeState() {
    setState(() {
      isEyeOpen == true ? isEyeOpen = false : isEyeOpen = true;
    });
  }
}
