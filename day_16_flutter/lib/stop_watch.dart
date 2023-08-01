import 'package:flutter/material.dart';
import 'dart:async';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int seconds = 0;
  bool _isTicking = true;
  late Timer timer;

  void _onTick(Timer timer) {
    setState(() {
      seconds++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stop Watch"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$seconds ${_secondsText()}',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      foregroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: _isTicking ? _startTimer : null,
                  child: Text('Start')),
              SizedBox(
                width: 20,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: _isTicking ? null : _stopTimer,
                  child: Text('Stop')),
            ],
          )
        ],
      ),
    );
  }

  void _stopTimer() {
    timer.cancel();
    setState(() {
      _isTicking = true;
    });
  }

  void _startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
    setState(() {
      _isTicking = false;
    });
  }

  String _secondsText() => seconds == 1 ? 'second' : 'seconds';
}
