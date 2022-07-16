import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

import './models/image_models.dart';
import './widgets/image_list.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 1;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    var uri = 'https://jsonplaceholder.typicode.com/posts/$counter';
    var response = await get(Uri.parse(uri));
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Lets see some images'),
        ),
      ),
    );
  }
}
