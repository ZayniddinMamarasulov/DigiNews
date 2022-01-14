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
        onTap: () {
          // Navigator.pushNamed(context, MainNavigationRouteNames.login);
        },
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
                child: Text(
              title,
              style: const TextStyle(fontSize: 16.0, color: Colors.white),
            ))
          ],
        ),
      ),
    );
  }
}
