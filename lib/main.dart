import 'package:flutter/material.dart';
import 'package:news_app/ui/navigation/main_navigation.dart';

import 'app_theme.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  static final mainNavigation = MainNavigation();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DigiTheme.light(),
      debugShowCheckedModeBanner: false,
      title: "News App",
      // home: AuthPage(),
      initialRoute: mainNavigation.initialRoute(),
      routes: mainNavigation.routes,
    );
  }
}
