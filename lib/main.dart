import 'package:flutter/material.dart';
import 'package:news_app/screens/auth_page.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/screens/loging_page.dart';
import 'package:news_app/screens/natification_page.dart';
import 'package:news_app/screens/otp_auth.dart';

void main() {
  runApp(const NewsApp());
}
class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);
  final String change = "Hozi biz ozgarish qildik";
  final String change2 = "shunga oxshatob proejctni kotarasiz";
  final String change3 = "yani ozgairshlar qilasiz";
  final String change4 = " endi ozgairshlarni saqlaymiz buning uchun // git add . // yozamiz";
  final String change5 = "agar sezgan bolsangiz qoshganimizdan keyin rang ozgardi";
  final String change6 = "git add tochka qilsez hamma fayllar qoshiladi agar bitta gayl qoshaman desez git add main.dart qilib noimini yozishiz kera";
  final String change7 = "hozir men yozgan korinishda commit yozasiz yan nima ishlar qilingani";
  final String change8 = "identifikatsiya";
  final String change9 = "hozi biza giot commit qilib ozgairshlarni umuman olganda kodlarni local save qildik endi uni globalga push qilamiz";
  final String change10= "bro zor usuli bor edi esdan chiqib binnima qilib sizni boshizi qotiribman hoz.....";
  final String change11= "aytaylik change boldi endi";
  final String change12= "menimcha endi oxshadi";
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "News App",
      home: NotiPage(),
    );
  }
}
