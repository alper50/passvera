import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

/// The 12 recovery words, numbered, in two columns (1-6 | 7-12).
class RecoveryWordsGrid extends StatelessWidget {
  const RecoveryWordsGrid({super.key, required this.words});

  final List<String> words;

  @override
  Widget build(BuildContext context) {
    final half = (words.length / 2).ceil();
    Widget column(int from, int to) => Expanded(
          child: Column(
            children: [
              for (var i = from; i < to; i++) _WordTile(i + 1, words[i]),
            ],
          ),
        );
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: MyColors.surfaceWhite,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: MyColors.ink, width: 3),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          column(0, half),
          const SizedBox(width: 12),
          column(half, words.length),
        ],
      ),
    );
  }
}

class _WordTile extends StatelessWidget {
  const _WordTile(this.number, this.word);

  final int number;
  final String word;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          SizedBox(
            width: 28,
            child: Text(
              '$number.',
              style: MyTextStyles.bodySmall.copyWith(color: MyColors.inkSoft),
            ),
          ),
          Expanded(
            child: Text(
              word,
              style: MyTextStyles.bodyLargeBold,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
