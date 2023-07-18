import 'package:flutter/material.dart';

void main() {
  const text = Text('Data');
  const centerPosition = Center(
    child: text,
  );
  // const appBar = AppBar(title: text,);
  const scaffold = Scaffold(
      // appBar: appBar,
      );

  const materialApp = MaterialApp(title: "Title", home: scaffold);

  runApp(MaterialApp(
      title: 'Title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text'),
          backgroundColor: Colors.grey[90],
        ),
      )));
}
