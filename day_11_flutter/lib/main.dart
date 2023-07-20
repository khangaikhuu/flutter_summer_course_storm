import 'package:flutter/material.dart';

void main() {
  const Text myText = Text('Hello Storm');
  const Center myCenteredText = Center(
    child: myText,
  );
  const Scaffold myScaffold = Scaffold(
    body: myCenteredText,
  );
  const MaterialApp myApp = MaterialApp(home: myScaffold);

  const MyCrazyApp crazyApp = MyCrazyApp();
  runApp(crazyApp);
}

// Stateless Widget
class MyCrazyApp extends StatelessWidget {
  const MyCrazyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Text(
            'Hello Storm',
            style: TextStyle(fontSize: 24, color: Color(0xEEC4EBFF)),
          ),
        ),
        appBar: AppBar(
          title: Text('Hello Stormers'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: printHello,
          child: Image.asset(
            'assets/fb_thumb.png',
            width: 200,
          ),
        ),
      ),
    );
  }
}

void printHello() {
  print('Hello Storm');
}
