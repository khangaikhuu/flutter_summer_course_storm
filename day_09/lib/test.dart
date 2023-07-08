import 'dart:math';
import 'color.dart';
import 'console.dart';

void main() async {
  final r = Random();
  final c = await Console.create(160, 160, 8);
  while (true) {
    c.color = Color.rgb(
      r.nextInt(256),
      r.nextInt(256),
      r.nextInt(256),
    );
    final w = r.nextInt(40) + 10;
    final h = r.nextInt(40) + 10;
    final x = r.nextInt(c.width - w);
    final y = r.nextInt(c.height - h);
    c.rect(x, y, w, h);
    c.update();
  }
}