import 'package:flutter/material.dart';
import 'package:passvera/domain/tag_palette.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/my_tag_chip.dart';
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
    builder: (BuildContext context) => _SecretFormDialog(
      title: title!,
      controllerAppKey: controllerAppKey!,
      controllerAppValue: controllerAppValue!,
      initialTag: initialTag,
      initialColorValue: initialColorValue,
      onPressed: onPressed,
    ),
  );
}

/// Create/edit form. Title and actions stay pinned; only the fields scroll,
/// so the buttons remain reachable on small screens and with the keyboard up.
class _SecretFormDialog extends StatefulWidget {
  const _SecretFormDialog({
    required this.title,
    required this.controllerAppKey,
    required this.controllerAppValue,
    required this.initialTag,
    required this.initialColorValue,
    required this.onPressed,
  });

  final String title;
  final TextEditingController controllerAppKey;
  final TextEditingController controllerAppValue;
  final String initialTag;
  final int initialColorValue;
  final void Function({required String tag, required int colorValue}) onPressed;

  @override
  State<_SecretFormDialog> createState() => _SecretFormDialogState();
}

class _SecretFormDialogState extends State<_SecretFormDialog> {
  late final TextEditingController _tagController =
      TextEditingController(text: widget.initialTag);
  late final ValueNotifier<PasswordStrength?> _strength =
      ValueNotifier(_strengthOf(widget.controllerAppValue.text));
  late int _selectedColor = widget.initialColorValue;

  static PasswordStrength? _strengthOf(String text) =>
      text.isEmpty ? null : PasswordStrength.calculate(text: text);

  @override
  void dispose() {
    _tagController.dispose();
    _strength.dispose();
    super.dispose();
  }

  void _generatePassword() {
    const config = PasswordGeneratorConfiguration(
      length: 32,
      minUppercase: 8,
    );
    final password =
        PasswordGenerator.fromConfig(configuration: config).generate();
    widget.controllerAppValue.value = TextEditingValue(text: password);
    _strength.value = _strengthOf(password);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: MyColors.transparent,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 280),
        curve: Curves.easeOutCubic,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Color(_selectedColor),
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
              child: Text(widget.title, style: MyTextStyles.headline2Bold),
            ),
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 4, 20, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const _SectionLabel('App'),
                    MyTextField(
                      text: 'e.g. Gmail',
                      controller: widget.controllerAppKey,
                      onChanged: (_) {},
                    ),
                    const SizedBox(height: 10),
                    const _SectionLabel('Password'),
                    MyTextField(
                      text: 'Type or generate one',
                      isSecret: true,
                      controller: widget.controllerAppValue,
                      onChanged: (value) =>
                          _strength.value = _strengthOf(value),
                    ),
                    PasswordStrengthChecker(
                      strength: _strength,
                      configuration: const PasswordStrengthCheckerConfiguration(
                        height: 22,
                        borderWidth: 2,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: _GeneratePasswordButton(
                        onPressed: _generatePassword,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const _SectionLabel('Tag'),
                    MyTextField(
                      text: 'e.g. Work, Social',
                      controller: _tagController,
                      onChanged: (_) => setState(() {}),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: TagPalette.suggestedTags
                          .map(
                            (tag) => MyTagChip(
                              label: tag,
                              selected:
                                  _tagController.text.trim().toLowerCase() ==
                                      tag.toLowerCase(),
                              onTap: () =>
                                  setState(() => _tagController.text = tag),
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 18),
                    const _SectionLabel('Color'),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: TagPalette.colorValues
                          .map(
                            (colorValue) => _ColorDot(
                              colorValue: colorValue,
                              selected: _selectedColor == colorValue,
                              onTap: () =>
                                  setState(() => _selectedColor = colorValue),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
            DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: MyColors.ink, width: 2),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 14, 20, 16),
                child: Row(
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
                        title: 'Save',
                        onPressed: () => widget.onPressed(
                          tag: _tagController.text,
                          colorValue: _selectedColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(text, style: MyTextStyles.bodyLargeBold),
    );
  }
}

class _ColorDot extends StatelessWidget {
  const _ColorDot({
    required this.colorValue,
    required this.selected,
    required this.onTap,
  });

  final int colorValue;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
                color:
                    MyColors.inkSoft.withValues(alpha: selected ? 0.55 : 0.25),
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
  }
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
    this.isDestructive = false,
  });
  final String title;

  /// `null` disables the button.
  final void Function()? onPressed;

  /// Irreversible action (delete): error fill so it is not mistaken for
  /// the neutral choice next to it.
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: MyColors.ink,
          disabledForegroundColor: MyColors.ink.withValues(alpha: 0.4),
          disabledBackgroundColor: MyColors.surfaceWhite.withValues(alpha: 0.4),
          backgroundColor: isDestructive
              ? MyColors.error
              : MyColors.surfaceWhite.withValues(alpha: 0.72),
          textStyle: MyTextStyles.bodyLargeBold,
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
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}

class MyTextField extends StatefulWidget {
  final String text;
  final TextEditingController controller;
  final void Function(String) onChanged;

  /// Hides the value and keeps it away from keyboard learning/suggestions
  /// and platform autofill.
  final bool isSecret;

  const MyTextField({
    super.key,
    required this.text,
    required this.controller,
    required this.onChanged,
    this.isSecret = false,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _focused = false;
  bool _revealed = false;

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
            obscureText: widget.isSecret && !_revealed,
            enableSuggestions: !widget.isSecret,
            autocorrect: !widget.isSecret,
            enableIMEPersonalizedLearning: !widget.isSecret,
            keyboardType:
                widget.isSecret ? TextInputType.visiblePassword : null,
            autofillHints: widget.isSecret ? null : const <String>[],
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
              suffixIcon: widget.isSecret
                  ? IconButton(
                      tooltip: _revealed ? 'Hide password' : 'Show password',
                      icon: Icon(
                        _revealed
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: MyColors.ink,
                      ),
                      onPressed: () => setState(() => _revealed = !_revealed),
                    )
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}
