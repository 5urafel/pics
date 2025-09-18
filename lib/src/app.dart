import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        appBar: AppBar(
          title: const Text("Let's Code"),
          backgroundColor: Color(0xff6750a4),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
        ),
      ),
    );
  }
}
