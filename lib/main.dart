import 'package:flutter/material.dart';
import 'package:news_app/screens/auth/forgot/forgot_password.dart';
import 'package:news_app/screens/auth/forgot/lesson.dart';
import 'package:news_app/screens/auth_page.dart';
import 'package:news_app/screens/home_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News App",
      home: ForgotPassword(),
    );
  }
}
