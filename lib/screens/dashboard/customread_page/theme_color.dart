import 'package:flutter/material.dart';

class ThemeColor extends StatefulWidget {
  const ThemeColor({Key? key}) : super(key: key);

  @override
  _ThemeColorState createState() => _ThemeColorState();
}

class _ThemeColorState extends State<ThemeColor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 20,
                
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.grey[600],
                radius: 20,
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.grey[800],
                radius: 20,
              )),
        ],
      ),
    );
  }
}
