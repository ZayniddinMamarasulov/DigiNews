import 'package:flutter/material.dart';
import 'package:news_app/screens/auth_page.dart';
import 'package:news_app/screens/forgot_password.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/screens/notification_page.dart';
import 'package:news_app/screens/sign_up.dart';
import 'package:news_app/screens/login_page.dart';
void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "News App",
      home: NotificatinPage()
    );
  }
}

Route createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animations, secondaryAnimation) => SignUpPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOutQuad;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}
Route login(){
  return PageRouteBuilder(
      pageBuilder: (context, animations, secondaryAnimation) => LoginPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOutQuad;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}
Route resetPassword(){
  return PageRouteBuilder(
      pageBuilder: (context, animations, secondaryAnimation) => ForgotPasswordPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOutQuad;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });

}
Route signUp(){
  return PageRouteBuilder(
      pageBuilder: (context, animations, secondaryAnimation) => SignUpPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOutQuad;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });

}