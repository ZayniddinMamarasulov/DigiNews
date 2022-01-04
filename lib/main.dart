import 'package:flutter/material.dart';
import 'package:news_app/screens/auth_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "News App",
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
