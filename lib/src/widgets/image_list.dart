import 'package:flutter/material.dart';
import '../models/image_models.dart';

// Stateless widgets get thrown away and rebuilt when the data changes
class ImageList extends StatelessWidget {
  final List<ImageModel> images; // final is like const in JS, immutable.

  ImageList(this.images);

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        // logic to construct new widget, item.
      },
    );
  }
}
