import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Let's Code"),
          backgroundColor: Color(0xff6750a4),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            print("I am pressed");
          },
        ),
      ),
    );
  }
}
