import 'package:flutter/material.dart';
import 'package:news_app/screens/auth/forgot/forgot_password.dart';
import 'package:news_app/screens/auth/forgot/forgot_number.dart';
import 'package:news_app/screens/auth/forgot/otp_forgot.dart';
import 'package:news_app/screens/picker/picker.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "News App",
      home: PickerPage(),
    );
  }
}
