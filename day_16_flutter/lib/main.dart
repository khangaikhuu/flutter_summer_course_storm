import 'package:day_16_flutter/stop_watch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StopWatchApp());
}


class StopWatchApp extends StatelessWidget {
  const StopWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StopWatch(),
      ),
    );
  }
}
