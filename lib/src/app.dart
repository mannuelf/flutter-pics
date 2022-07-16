import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:pics/src/models/image_models.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 1;

  void fetchImage() async {
    print('change image');
    counter++;
    var uri = 'https://jsonplaceholder.typicode.com/posts/$counter';
    var response = await get(Uri.parse(uri));
    var imageModel = ImageModel.fromJson(json.decode(response.body));
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
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
