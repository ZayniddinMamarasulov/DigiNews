import 'package:flutter/material.dart';
import 'package:news_app/screens/auth_page.dart';
import 'package:news_app/screens/home_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);
  final String change = "Hozi biz ozgarish qildik";
  final String change2 = "shunga oxshatob proejctni kotarasiz";
  final String change3 = "yani ozgairshlar qilasiz";
  final String change4 = "endi ozgairshlarni saqlaymiz buning uchun // git add . // yozamiz";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News App",
      home: AuthPage(),
    );
  }
}
