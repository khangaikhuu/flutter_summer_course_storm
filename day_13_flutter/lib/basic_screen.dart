import 'package:day_13_flutter/immutable_widget.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Welcome To Flutter'),
        actions: [Icon(Icons.edit)],
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: ImmutableWidget(),
        )
        ,
      ),
      drawer: Drawer(
        child: Container(
            color: Colors.lightBlue,
            child: Text("I'm a drawer")
        ),
      ),
    );
  }

  Widget _buildShinyCircle(){
    return Container();
  }
}
