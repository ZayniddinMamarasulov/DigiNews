import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        child: ListTile(
          title: Text(title),
          leading: Image.asset(image),
          onTap: () {},
        ),
      ),
    );
  }
}
