import 'package:flutter/material.dart';

// create a class that will be out custom widget
// extend the StatelessWidget base class
class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Hi there!!!');
          },
        ),
        appBar: AppBar(
          title: Text('Lets see some images'),
        ),
      ),
    );
  }
}
// must define a build method that returns the widgets that this widget will show.