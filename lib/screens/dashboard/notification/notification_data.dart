import 'package:flutter/material.dart';

class NewsInfo extends StatelessWidget {
  NewsInfo(
      {Key? key,
      required this.imageurl,
      required this.name,
      required this.time,
      required this.text})
      : super(key: key);

  final String imageurl;
  final String name;
  final String text;
  String time;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
            child: Row(
      children: [
        Image.asset(imageurl),
        SizedBox(
          width: 10.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              time,
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ],
        ),
      ],
    )));
  }
}
