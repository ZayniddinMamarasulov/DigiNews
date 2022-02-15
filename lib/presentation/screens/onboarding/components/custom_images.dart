import 'package:flutter/material.dart';

class CustomImages extends StatelessWidget {
  final String image;
  const CustomImages({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: 375,
      height: 340,
      child: Image.asset(image),
    );
  }

  static List<Widget> images = [
    const CustomImages(
      image: 'assets/images/illust1.png',
    ),
    const CustomImages(
      image: 'assets/images/illust2.png',
    ),
    const CustomImages(
      image: 'assets/images/illust3.png',
    ),
  ];
}
