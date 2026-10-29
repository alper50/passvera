import 'package:passvera/domain/application_model.dart';

/// User-defined order of password tags. Tags compare case-insensitively,
/// like the tag filter; tags missing from the saved order go last,
/// alphabetically, so a new tag never disturbs the order the user built.
abstract final class TagOrder {
  /// [tags] (distinct) arranged by [saved].
  static List<String> arrange(Iterable<String> tags, List<String> saved) {
    final ranks = _ranks(saved);
    int rank(String tag) => ranks[tag.toLowerCase()] ?? saved.length;
    return tags.toList()
      ..sort((a, b) {
        final byRank = rank(a).compareTo(rank(b));
        if (byRank != 0) return byRank;
        return a.toLowerCase().compareTo(b.toLowerCase());
      });
  }

  /// [entries] grouped by tag in [orderedTags] order, then by name.
  static List<ApplicationModel> sortEntries(
    List<ApplicationModel> entries,
    List<String> orderedTags,
  ) {
    final ranks = _ranks(orderedTags);
    int rank(ApplicationModel m) =>
        ranks[m.tag.toLowerCase()] ?? orderedTags.length;
    return [...entries]..sort((a, b) {
        final byRank = rank(a).compareTo(rank(b));
        if (byRank != 0) return byRank;
        return a.key.toLowerCase().compareTo(b.key.toLowerCase());
      });
  }

  /// [primary] followed by the tags of [extra] it does not contain yet.
  static List<String> merge(List<String> primary, List<String> extra) {
    final known = primary.map((t) => t.toLowerCase()).toSet();
    return [
      ...primary,
      for (final tag in extra)
        if (known.add(tag.toLowerCase())) tag,
    ];
  }

  static Map<String, int> _ranks(List<String> order) {
    final ranks = <String, int>{};
    for (var i = 0; i < order.length; i++) {
      ranks.putIfAbsent(order[i].toLowerCase(), () => i);
    }
    return ranks;
  }
}
