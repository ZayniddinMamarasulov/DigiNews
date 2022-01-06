import 'package:flutter/material.dart';
import 'package:news_app/screens/registr_and_login/auth_page/auth_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News App",
      home: AuthPage(),
    );
  }
}
