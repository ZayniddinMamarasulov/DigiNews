import 'dart:async';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';

import 'utils/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ru', 'RU'),
        Locale('uz', 'UZ'),
      ],
      path: 'assets/lang', // <-- change the path of the translation files
      fallbackLocale: Locale(Platform.localeName),
      child: NewsApp(),
    ),
  );
}

class NewsApp extends StatelessWidget {
  NewsApp({Key? key}) : super(key: key);

  final mainNavigation = MainNavigation();

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
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        );
      },
    );
  }
}

class StreamControllerHelper {
  static StreamController<bool> setTheme = StreamController();
}
