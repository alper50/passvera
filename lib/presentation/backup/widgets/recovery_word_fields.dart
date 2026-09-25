import 'package:flutter/material.dart';
import 'package:passvera/domain/backup/bip39_english.dart';
import 'package:passvera/domain/backup/recovery_key.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/widgets/my_tag_chip.dart';

/// Inputs for recovery words: one field per word, labelled with its word
/// number ([numbers], 1-based). Suggests matching BIP39 words, spreads a
/// pasted phrase over the following fields, and keeps the words away from
/// keyboard learning.
class RecoveryWordFields extends StatefulWidget {
  const RecoveryWordFields({
    super.key,
    required this.numbers,
    required this.onChanged,
  });

  final List<int> numbers;
  final ValueChanged<List<String>> onChanged;

  @override
  State<RecoveryWordFields> createState() => _RecoveryWordFieldsState();
}

class _RecoveryWordFieldsState extends State<RecoveryWordFields> {
  late final List<TextEditingController> _controllers = [
    for (final _ in widget.numbers) TextEditingController(),
  ];
  late final List<FocusNode> _focus = [
    for (final _ in widget.numbers) FocusNode()..addListener(_refresh),
  ];
  int? _active;

  @override
  void dispose() {
    for (final c in _controllers) {
      c.dispose();
    }
    for (final f in _focus) {
      f.dispose();
    }
    super.dispose();
  }

  void _refresh() {
    final focused = _focus.indexWhere((f) => f.hasFocus);
    setState(() => _active = focused < 0 ? _active : focused);
  }

  void _changed(int index, String value) {
    final parts = value.trim().split(RegExp(r'\s+'));
    if (parts.length > 1) {
      // A pasted phrase: one word per field from here on.
      for (var i = 0;
          i < parts.length && index + i < _controllers.length;
          i++) {
        _controllers[index + i].text = parts[i].toLowerCase();
      }
      final last = (index + parts.length - 1).clamp(0, _controllers.length - 1);
      _focus[last].requestFocus();
    }
    setState(() {});
    widget.onChanged([for (final c in _controllers) c.text]);
  }

  void _pick(String word) {
    final index = _active;
    if (index == null) return;
    _controllers[index].text = word;
    if (index + 1 < _focus.length) {
      _focus[index + 1].requestFocus();
    } else {
      _focus[index].unfocus();
    }
    _changed(index, word);
  }

  List<String> get _suggestions {
    final index = _active;
    if (index == null) return const [];
    final text = _controllers[index].text.trim().toLowerCase();
    if (text.isEmpty || RecoveryKey.isWord(text)) return const [];
    return bip39English.where((w) => w.startsWith(text)).take(4).toList();
  }

  @override
  Widget build(BuildContext context) {
    final suggestions = _suggestions;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LayoutBuilder(
          // Two columns at any width.
          builder: (context, constraints) => Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (var i = 0; i < widget.numbers.length; i++)
                SizedBox(
                  width: (constraints.maxWidth - 8) / 2,
                  child: _WordField(
                    number: widget.numbers[i],
                    controller: _controllers[i],
                    focusNode: _focus[i],
                    isLast: i == widget.numbers.length - 1,
                    onChanged: (v) => _changed(i, v),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 36,
          child: suggestions.isEmpty
              ? null
              : Wrap(
                  spacing: 8,
                  children: [
                    for (final word in suggestions)
                      MyTagChip(
                        label: word,
                        selected: false,
                        onTap: () => _pick(word),
                      ),
                  ],
                ),
        ),
      ],
    );
  }
}

class _WordField extends StatelessWidget {
  const _WordField({
    required this.number,
    required this.controller,
    required this.focusNode,
    required this.isLast,
    required this.onChanged,
  });

  final int number;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isLast;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final valid = RecoveryKey.isWord(controller.text);
    return TextField(
      controller: controller,
      focusNode: focusNode,
      onChanged: onChanged,
      // Recovery words are a secret: no suggestions, learning or autofill.
      autocorrect: false,
      enableSuggestions: false,
      enableIMEPersonalizedLearning: false,
      autofillHints: null,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: isLast ? TextInputAction.done : TextInputAction.next,
      style: MyTextStyles.bodyLargeBold,
      decoration: InputDecoration(
        isDense: true,
        // prefixText only shows while focused; the number must always show.
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 10, right: 4),
          child: Text(
            '$number.',
            style: MyTextStyles.bodySmall.copyWith(color: MyColors.inkSoft),
          ),
        ),
        prefixIconConstraints: const BoxConstraints(minWidth: 0),
        suffixIcon: valid
            ? const Icon(Icons.check_rounded, size: 18, color: MyColors.ink)
            : null,
        filled: true,
        fillColor: MyColors.surfaceWhite,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: MyColors.ink, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: MyColors.ink, width: 3),
        ),
      ),
    );
  }
}
