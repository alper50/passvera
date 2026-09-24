import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/presentation/core/widgets/my_tag_chip.dart';

/// Horizontal single-select tag filter above the secrets list.
class TagFilterBar extends StatelessWidget {
  const TagFilterBar({
    super.key,
    required this.tags,
    required this.selectedTag,
  });

  final List<String> tags;
  final String? selectedTag;

  @override
  Widget build(BuildContext context) {
    void select(String? tag) =>
        context.read<HomeBloc>().add(HomeEvent.tagSelected(tag));

    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(10, 10, 20, 4),
        itemCount: tags.length + 1,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          if (index == 0) {
            return MyTagChip(
              label: 'All',
              selected: selectedTag == null,
              onTap: () => select(null),
            );
          }
          final tag = tags[index - 1];
          return MyTagChip(
            label: tag,
            selected: tag == selectedTag,
            onTap: () => select(tag),
          );
        },
      ),
    );
  }
}
