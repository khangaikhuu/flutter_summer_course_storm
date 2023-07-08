import 'dart:io';
import 'Colors.dart';
import 'color.dart';

class Console {
  final Process _process;
  final int width;
  final int height;
  Console._(this._process, this.width, this.height) {
    clear();
  }
  void close() {
    _process.stdin.close();
  }
  Color _color = Colors.white;
  Color get color => _color;
  set color(Color color) {
    _color = color;
    _process.stdin.writeln('c${color.value}');
  }
  void clear([Color color = Colors.black]) {
    _process.stdin.writeln('c${color.value}');
    _process.stdin.writeln('r0 0 $width $height');
    _process.stdin.writeln('c${_color.value}');
  }
  void point(int x, int y) {
    _process.stdin.writeln('r$x $y 1 1');
  }
  void rect(int x, int y, int width, int height) {
    _process.stdin.writeln('r$x $y $width $height');
  }
  void update() {
    _process.stdin.writeln('u');
  }
  static Future<Console> create(
      int width, int height, [int scale = 1]
      ) async {
    return Console._(
      await Process.start(
        './a.out',
        ['Dart', '-1', '-1', '$width', '$height', '$scale'],
      ),
      width,
      height,
    );
  }
}