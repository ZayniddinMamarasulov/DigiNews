import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';

import 'utils/app_theme.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  static final mainNavigation = MainNavigation();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: StreamControllerHelper.setTheme.stream,
      initialData: true,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        print(snapshot.data);
        return MaterialApp(
          theme: snapshot.data ? DigiTheme.light() : DigiTheme.dark(),
          debugShowCheckedModeBanner: false,
          title: "News App",
          initialRoute: mainNavigation.initialRoute(),
          routes: mainNavigation.routes,
        );
      },
    );
  }
}

class StreamControllerHelper {
  static StreamController<bool> setTheme = StreamController();
}
