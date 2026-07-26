/// Preset tag labels and ARGB color values for password entries.
class TagPalette {
  TagPalette._();

  static const String defaultTag = 'General';
  static const int defaultColorValue = 0xFFFFEB3B;

  static const List<int> colorValues = [
    0xFFFFEB3B, // brand yellow
    0xFF81C784, // soft green
    0xFF64B5F6, // soft blue
    0xFFFFB74D, // soft orange
    0xFFE57373, // soft red
    0xFFBA68C8, // soft purple
    0xFF4DB6AC, // teal
    0xFFA1887F, // brown
  ];

  static const List<String> suggestedTags = [
    'General',
    'Work',
    'Social',
    'Finance',
    'Personal',
  ];
}
