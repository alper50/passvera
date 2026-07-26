import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/passActionBloc/pass_action_bloc.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/confirm_dialog.dart';
import 'package:passvera/presentation/core/widgets/form_dialog.dart';
import 'package:passvera/presentation/core/widgets/my_custom_container.dart';
import 'package:passvera/presentation/core/widgets/my_small_button.dart';

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

  Color get _tagColor => Color(widget.model.colorValue);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PassActionBloc, PassActionState>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              flex: 1,
              child: MyCustomContainer(
                radius: 5,
                color: _tagColor,
                padding: const EdgeInsets.all(5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'App:  ${widget.model.key}',
                            style: MyTextStyles.headline2,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Tag:  ${widget.model.tag}',
                            style: MyTextStyles.bodySmallBold,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    MySmallButton(
                      icon: const Icon(Icons.edit_outlined),
                      onTap: () {
                        final controllerAppKey =
                            TextEditingController(text: widget.model.key);
                        final controllerAppValue =
                            TextEditingController(text: widget.model.value);

                        showFormDialog(
                          title: 'What Changed :)',
                          controllerAppKey: controllerAppKey,
                          controllerAppValue: controllerAppValue,
                          initialTag: widget.model.tag,
                          initialColorValue: widget.model.colorValue,
                          context: context,
                          onPressed: ({required tag, required colorValue}) {
                            context.read<PassActionBloc>().add(
                                  PassActionEvent.updatePass(
                                    pass: ApplicationModel(
                                      key: controllerAppKey.text,
                                      value: controllerAppValue.text,
                                      tag: tag,
                                      colorValue: colorValue,
                                    ),
                                    oldKey: widget.model.key,
                                  ),
                                );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: MyCustomContainer(
                radius: 5,
                color: _tagColor,
                padding: const EdgeInsets.all(5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: isEyeOpen
                          ? Text(
                              widget.model.value,
                              style: MyTextStyles.headline2Bold,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )
                          : const Text(
                              'Password:  *****',
                              style: MyTextStyles.headline2,
                            ),
                    ),
                    const SizedBox(width: 8),
                    MySmallButton(
                      icon: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (child, anim) => RotationTransition(
                          turns: child.key == const ValueKey('icon1')
                              ? Tween<double>(begin: 1, end: 0.0).animate(anim)
                              : Tween<double>(begin: 0.0, end: 1).animate(anim),
                          child: FadeTransition(opacity: anim, child: child),
                        ),
                        child: isEyeOpen
                            ? const Icon(
                                Icons.visibility_outlined,
                                key: ValueKey('icon1'),
                              )
                            : const Icon(
                                Icons.visibility_off_outlined,
                                key: ValueKey('icon2'),
                              ),
                      ),
                      onTap: changeEyeState,
                    ),
                  ],
                ),
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
                    onTap: () async {
                      final confirmed = await showConfirmDialog(
                        context: context,
                        title: 'Delete password?',
                        message:
                            'This will permanently remove "${widget.model.key}".',
                        confirmLabel: 'Delete',
                        cancelLabel: 'Cancel',
                      );
                      if (!confirmed || !context.mounted) return;
                      context.read<PassActionBloc>().add(
                            PassActionEvent.deletePass(pass: widget.model),
                          );
                    },
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
      isEyeOpen = !isEyeOpen;
    });
  }
}
