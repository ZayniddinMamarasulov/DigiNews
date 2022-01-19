import 'package:flutter/material.dart';

class BookMData extends StatelessWidget {
  const BookMData(
      {Key? key,
      required this.imgUrl,
      required this.title,
      required this.theme,
      required this.time})
      : super(key: key);

  final String imgUrl;
  final String title;
  final String theme;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(imgUrl),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  theme,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[900],
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  time,
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/Icons/Bookmark-Outline.png",
                  color: Colors.grey[900],
                ))
          ],
        ),
        Divider(
          thickness: 1.0,
          height: 50.0,
        ),
      ],
    ));
  }
}
