import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  fetchData() async {
    counter++;
    var response = await http.get(
      Uri.parse('https://dummyjson.com/products/$counter'),
      headers: {
        "Accept": "application/json",
        "User-Agent": "FlutterApp/1.0", // 👈 this tricks Cloudflare
      },
    );

    if (response.statusCode == 200) {
      // Only decode if it's valid JSON
      var imageModel = ImageModel.fromJson(json.decode(response.body));
      setState(() {
        images.add(imageModel);
      });
    } else {
      print("Request failed: ${response.statusCode}");
      print("Response body: ${response.body}");
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        appBar: AppBar(
          title: const Text("Let's Code"),
          backgroundColor: Color(0xff6750a4),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: fetchData,
        ),
      ),
    );
  }
}
