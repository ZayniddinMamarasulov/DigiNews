import 'package:flutter/material.dart';
class Lesson extends StatefulWidget {
  const Lesson({Key? key}) : super(key: key);

  @override
  _LessonState createState() => _LessonState();
}

class _LessonState extends State<Lesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Nodirbek",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
