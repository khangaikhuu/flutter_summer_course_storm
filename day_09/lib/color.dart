class Color {
  final int value;

  const Color(this.value);

  const Color.rgb(int red, int green, int blue)
      : value = (red << 16) | (green << 8) | blue;

  int get red => (value >> 16) & 255;

  int get green => (value >> 8) & 255;

  int get blue => value & 255;
}
