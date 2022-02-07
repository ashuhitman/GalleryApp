import 'package:flutter/material.dart';
import 'package:gallary_app/image_page.dart';

class ImageItem extends StatelessWidget {
  final String title;
  final String img;
  const ImageItem({Key? key, required this.title, required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ImagePage(title: title, img: img)));
      },
      child: Hero(
        tag: img,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
