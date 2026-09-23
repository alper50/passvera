import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/clipboardBloc/clipboard_bloc.dart';
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
    // Content-sized cards; the delete action sits at the bottom when there is
    // room and scrolls with the content when there is not.
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _DetailCard(
                  color: _tagColor,
                  label: 'App',
                  value: Text(
                    widget.model.key,
                    style: MyTextStyles.headline2Bold,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  footer: Text(
                    'Tag:  ${widget.model.tag}',
                    style: MyTextStyles.bodySmallBold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  actions: [
                    MySmallButton(
                      icon: const Icon(Icons.edit_outlined, size: 32),
                      onTap: _openEditDialog,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _DetailCard(
                  color: _tagColor,
                  label: 'Password',
                  value: Text(
                    isEyeOpen ? widget.model.value : '••••••••',
                    style: MyTextStyles.headline3Bold,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  actions: [
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
                                size: 32,
                              )
                            : const Icon(
                                Icons.visibility_off_outlined,
                                key: ValueKey('icon2'),
                                size: 32,
                              ),
                      ),
                      onTap: changeEyeState,
                    ),
                    const SizedBox(width: 10),
                    MySmallButton(
                      icon: const Icon(Icons.copy_rounded, size: 32),
                      onTap: () => context.read<ClipboardBloc>().add(
                            ClipboardEvent.copySensitive(
                              text: widget.model.value,
                            ),
                          ),
                    ),
                  ],
                ),
                const Spacer(),
                const SizedBox(height: 24),
                MyFormButton(
                  title: 'Delete password',
                  isDestructive: true,
                  onPressed: _confirmDelete,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _openEditDialog() {
    final controllerAppKey = TextEditingController(text: widget.model.key);
    final controllerAppValue = TextEditingController(text: widget.model.value);

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
  }

  Future<void> _confirmDelete() async {
    final confirmed = await showConfirmDialog(
      context: context,
      title: 'Delete password?',
      message: 'This will permanently remove "${widget.model.key}".',
      confirmLabel: 'Delete',
      cancelLabel: 'Cancel',
    );
    if (!confirmed || !mounted) return;
    context.read<PassActionBloc>().add(
          PassActionEvent.deletePass(pass: widget.model),
        );
  }

  void changeEyeState() {
    setState(() {
      isEyeOpen = !isEyeOpen;
    });
  }
}

/// Labelled value card with trailing action buttons.
class _DetailCard extends StatelessWidget {
  const _DetailCard({
    required this.color,
    required this.label,
    required this.value,
    required this.actions,
    this.footer,
  });

  final Color color;
  final String label;
  final Widget value;
  final Widget? footer;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return MyCustomContainer(
      radius: 5,
      color: color,
      padding: const EdgeInsets.fromLTRB(16, 14, 12, 14),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(label, style: MyTextStyles.bodySmall),
                const SizedBox(height: 4),
                value,
                if (footer != null) ...[
                  const SizedBox(height: 6),
                  footer!,
                ],
              ],
            ),
          ),
          const SizedBox(width: 12),
          ...actions,
        ],
      ),
    );
  }
}
