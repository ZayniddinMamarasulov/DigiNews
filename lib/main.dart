import 'dart:async';
import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';
import 'package:news_app/services/PreferenceService.dart';
import 'package:news_app/utils/static_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      child: NewsApp(await initialRoute(), await themeMode()),
    ),
  );
}

Future<String> initialRoute() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLogIn = prefs.getBool(StaticData.IS_LOG_IN) ?? false;
  return isLogIn
      ? MainNavigationRouteNames.home
      : MainNavigationRouteNames.auth;
}

Future<bool> themeMode() async {
  PreferenceService service = PreferenceService();
  return service.getThemeMode();
}

class NewsApp extends StatelessWidget {
  final String initialRoute;
  final bool isDarkMode;

  NewsApp(this.initialRoute, this.isDarkMode, {Key? key}) : super(key: key);

  final mainNavigation = MainNavigation();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: StreamControllerHelper.setTheme.stream,
      initialData: isDarkMode,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return MaterialApp(
          theme: snapshot.data ? DigiTheme.dark() : DigiTheme.light(),
          debugShowCheckedModeBanner: false,
          title: "News App",
          initialRoute: initialRoute,
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
