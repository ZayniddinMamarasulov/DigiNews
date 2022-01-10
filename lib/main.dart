import 'package:flutter/material.dart';
import 'package:news_app/screens/Reset_Password_page.dart';
import 'package:news_app/screens/SignUp_page.dart';
import 'package:news_app/screens/auth_page.dart';
import 'package:news_app/screens/email_page.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/screens/register_and_login/login_page/components/error_page.dart';
import 'package:news_app/screens/verify_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News App",
      home: AuthPage(),
      routes: {
        SignUpPage.id:(context)=>SignUpPage(),
        VerifyPage.id:(context)=>VerifyPage(),
        ErrorPage.id:(context)=>ErrorPage(),
        EmailPage.id:(context)=>EmailPage(),
        ResetPasswordPage.id:(context)=>ResetPasswordPage(),
      },
    );
  }
}
