import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String title;
  final String img;
  const ImagePage({Key? key, required this.title, required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Hero(tag: img, child: Image(image: AssetImage(img))),
    );
  }
}
