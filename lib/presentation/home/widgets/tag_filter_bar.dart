import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/presentation/core/widgets/my_tag_chip.dart';

/// Horizontal single-select tag filter above the secrets list. Long-press a
/// tag and drag it to reorder; "All" stays first.
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
    final bloc = context.read<HomeBloc>();
    void select(String? tag) => bloc.add(HomeEvent.tagSelected(tag));

    return SizedBox(
      height: 48,
      child: ReorderableListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(10, 10, 20, 4),
        header: MyTagChip(
          label: 'All',
          selected: selectedTag == null,
          onTap: () => select(null),
        ),
        itemCount: tags.length,
        itemBuilder: (context, index) {
          final tag = tags[index];
          return Padding(
            key: ValueKey(tag.toLowerCase()),
            padding: const EdgeInsets.only(left: 8),
            child: MyTagChip(
              label: tag,
              selected: tag == selectedTag,
              onTap: () => select(tag),
            ),
          );
        },
        onReorderItem: (oldIndex, newIndex) {
          final reordered = [...tags];
          reordered.insert(newIndex, reordered.removeAt(oldIndex));
          bloc.add(HomeEvent.tagsReordered(reordered));
        },
        // The chip itself is the feedback: no rectangular Material shadow.
        proxyDecorator: (child, _, animation) => ScaleTransition(
          scale: Tween(begin: 1.0, end: 1.08).animate(
            CurvedAnimation(parent: animation, curve: Curves.easeOut),
          ),
          child: Material(type: MaterialType.transparency, child: child),
        ),
      ),
    );
  }
}
