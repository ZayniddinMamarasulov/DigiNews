import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    final double itemWidth = size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 0.0),
          child: Image.asset(
            'assets/rp1.jpg',
            height: 200.0,
            width: itemWidth,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "Some Heading Text",
            style: TextStyle(
                fontSize: 28.0,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ),
        const Expanded(
          flex: 1,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,//.horizontal
            child: Text(
              "1 Description that is too long in text format(Here Data is coming from API) jdlksaf j klkjjflkdsjfkddfdfsdfds " "2 Description that is too long in text format(Here Data is coming from API) d fsdfdsfsdfd dfdsfdsf sdfdsfsd d " "3 Description that is too long in text format(Here Data is coming from API)  adfsfdsfdfsdfdsf   dsf dfd fds fs" +
                  "4 Description that is too long in text format(Here Data is coming from API) dsaf dsafdfdfsd dfdsfsda fdas dsad" +
                  "5 Description that is too long in text format(Here Data is coming from API) dsfdsfd fdsfds fds fdsf dsfds fds " +
                  "6 Description that is too long in text format(Here Data is coming from API) asdfsdfdsf fsdf sdfsdfdsf sd dfdsf" +
                  "7 Description that is too long in text format(Here Data is coming from API) df dsfdsfdsfdsfds df dsfds fds fsd" +
                  "8 Description that is too long in text format(Here Data is coming from API)" +
                  "9 Description that is too long in text format(Here Data is coming from API)" +
                  "10 Description that is too long in text format(Here Data is coming from API)",
              style: TextStyle(
                fontSize: 16.0, color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}