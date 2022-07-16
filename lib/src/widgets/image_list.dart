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
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Image.network(image.url),
          ),
          Text(image.title)
        ],
      ),
    );
  }
}
