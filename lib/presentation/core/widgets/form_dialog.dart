import 'package:flutter/material.dart';
import 'package:passvera/domain/tag_palette.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:password_strength_checker/password_strength_checker.dart';

void showFormDialog({
  required BuildContext context,
  required void Function({
    required String tag,
    required int colorValue,
  }) onPressed,
  String? title = 'Lets Add New One',
  TextEditingController? controllerAppKey,
  TextEditingController? controllerAppValue,
  String initialTag = TagPalette.defaultTag,
  int initialColorValue = TagPalette.defaultColorValue,
}) {
  showDialog(
    context: context,
    barrierColor: MyColors.ink.withValues(alpha: 0.35),
    builder: (BuildContext context) {
      final passNotifier = ValueNotifier<PasswordStrength?>(null);
      final tagController = TextEditingController(text: initialTag);
      var selectedColor = initialColorValue;

      return StatefulBuilder(
        builder: (context, setState) {
          return Dialog(
            backgroundColor: MyColors.transparent,
            elevation: 0,
            insetPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 280),
              curve: Curves.easeOutCubic,
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 16),
              decoration: BoxDecoration(
                color: Color(selectedColor),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: MyColors.ink, width: 4),
                boxShadow: const [
                  BoxShadow(
                    color: MyColors.inkSoft,
                    offset: Offset(-4, 6),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                clipBehavior: Clip.none,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(title!, style: MyTextStyles.headline2Bold),
                    const SizedBox(height: 18),
                    MyTextField(
                      text: 'App Name',
                      controller: controllerAppKey!,
                      onChanged: (_) {},
                    ),
                    const SizedBox(height: 12),
                    MyTextField(
                      text: 'Password Pls..',
                      controller: controllerAppValue!,
                      onChanged: (string) {
                        passNotifier.value =
                            PasswordStrength.calculate(text: string);
                      },
                    ),
                    const SizedBox(height: 8),
                    PasswordStrengthChecker(
                      strength: passNotifier,
                      configuration: const PasswordStrengthCheckerConfiguration(
                        height: 22,
                        borderWidth: 2,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: _GeneratePasswordButton(
                        onPressed: () {
                          const config = PasswordGeneratorConfiguration(
                            length: 32,
                            minUppercase: 8,
                          );
                          final passwordGenerator =
                              PasswordGenerator.fromConfig(
                            configuration: config,
                          );
                          final password = passwordGenerator.generate();
                          controllerAppValue.value =
                              TextEditingValue(text: password);
                          passNotifier.value =
                              PasswordStrength.calculate(text: password);
                        },
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Text('Tag', style: MyTextStyles.bodyLargeBold),
                    const SizedBox(height: 8),
                    MyTextField(
                      text: 'e.g. Work, Social',
                      controller: tagController,
                      onChanged: (_) => setState(() {}),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: TagPalette.suggestedTags.map((tag) {
                        final selected =
                            tagController.text.trim().toLowerCase() ==
                                tag.toLowerCase();
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              tagController.text = tag;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 180),
                            curve: Curves.easeOut,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: selected
                                  ? MyColors.ink
                                  : MyColors.surfaceWhite
                                      .withValues(alpha: 0.55),
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: MyColors.ink, width: 2),
                            ),
                            child: AnimatedDefaultTextStyle(
                              duration: const Duration(milliseconds: 180),
                              style: MyTextStyles.bodySmallBold.copyWith(
                                color: selected
                                    ? MyColors.surfaceWhite
                                    : MyColors.ink,
                              ),
                              child: Text(tag),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 18),
                    const Text('Color', style: MyTextStyles.bodyLargeBold),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: TagPalette.colorValues.map((colorValue) {
                        final selected = selectedColor == colorValue;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedColor = colorValue;
                            });
                          },
                          child: AnimatedScale(
                            scale: selected ? 1.12 : 1.0,
                            duration: const Duration(milliseconds: 180),
                            curve: Curves.easeOutBack,
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 180),
                              curve: Curves.easeOut,
                              width: 34,
                              height: 34,
                              decoration: BoxDecoration(
                                color: Color(colorValue),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: MyColors.ink,
                                  width: selected ? 3.5 : 2,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: MyColors.inkSoft.withValues(
                                        alpha: selected ? 0.55 : 0.25),
                                    offset: Offset(
                                      selected ? -2.5 : -1.5,
                                      selected ? 2.5 : 1.5,
                                    ),
                                    blurRadius: selected ? 5 : 3,
                                  ),
                                ],
                              ),
                              child: AnimatedOpacity(
                                opacity: selected ? 1 : 0,
                                duration: const Duration(milliseconds: 160),
                                child: const Icon(Icons.check, size: 18),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 22),
                    Row(
                      children: [
                        Expanded(
                          child: MyFormButton(
                            title: 'Close',
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: MyFormButton(
                            title: 'Send',
                            onPressed: () => onPressed(
                              tag: tagController.text,
                              colorValue: selectedColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}

class _GeneratePasswordButton extends StatelessWidget {
  const _GeneratePasswordButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyColors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: MyColors.surfaceWhite.withValues(alpha: 0.55),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: MyColors.ink, width: 2),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.auto_awesome, size: 16, color: MyColors.ink),
              const SizedBox(width: 6),
              Text(
                'Generate',
                style: MyTextStyles.bodySmallBold.copyWith(color: MyColors.ink),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFormButton extends StatelessWidget {
  const MyFormButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: MyColors.ink,
          backgroundColor: MyColors.surfaceWhite.withValues(alpha: 0.72),
          textStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(
              color: MyColors.ink,
              width: 2.0,
            ),
          ),
          elevation: 0.0,
        ),
        onPressed: () => onPressed(),
        child: Text(title),
      ),
    );
  }
}

class MyTextField extends StatefulWidget {
  final String text;
  final TextEditingController controller;
  final void Function(String) onChanged;

  const MyTextField({
    Key? key,
    required this.text,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    // Symmetric inset so fields align with action buttons.
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Focus(
        onFocusChange: (hasFocus) {
          setState(() => _focused = hasFocus);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          transform: Matrix4.translationValues(0.0, _focused ? -1.0 : 0.0, 0.0),
          decoration: BoxDecoration(
            color: MyColors.surfaceWhite.withValues(alpha: 0.62),
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: MyColors.ink,
              width: _focused ? 3.5 : 3.0,
            ),
            boxShadow: [
              BoxShadow(
                color:
                    MyColors.inkSoft.withValues(alpha: _focused ? 0.45 : 0.32),
                offset: Offset(_focused ? -3.0 : -4.0, _focused ? 4.0 : 5.0),
                blurRadius: _focused ? 10.0 : 8.0,
                spreadRadius: 0,
              ),
            ],
          ),
          child: TextFormField(
            onChanged: (string) => widget.onChanged(string),
            controller: widget.controller,
            style: const TextStyle(
              fontSize: 16.0,
              color: MyColors.ink,
              decoration: TextDecoration.none,
            ),
            decoration: InputDecoration(
              labelText: widget.text,
              labelStyle: const TextStyle(
                fontSize: 18.0,
                color: MyColors.ink,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ),
      ),
    );
  }
}
