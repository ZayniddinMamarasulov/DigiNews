import 'package:flutter/material.dart';
class VerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 30.0,
      width: 1.0,
      color: Colors.white30,
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }
}
@override
Widget build(BuildContext context) {
  return DecoratedBox(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("your_asset"), fit: BoxFit.cover),
    ),
    child: Center(child: FlutterLogo(size: 300)),
  );
}