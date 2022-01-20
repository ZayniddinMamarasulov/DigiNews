import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';
import 'package:news_app/services/theme_service.dart';
import 'package:news_app/utils/app_localization.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  final mainNavigation = MainNavigation();

  SharedPreferences pref = await SharedPreferences.getInstance();
  bool isDark = pref.getBool('darkTheme') ?? false;

  runApp(ChangeNotifierProvider(
    create: (BuildContext context) => ThemeServiceProvider(isDark),
    child: EasyLocalizationCustomWidget(
      child: NewsApp(initialRoute: await mainNavigation.initialRoute()),
    ),
  ));
}

class NewsApp extends StatelessWidget {
  final String initialRoute;
  NewsApp({Key? key, required this.initialRoute}) : super(key: key);

  final mainNavigation = MainNavigation();

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeServiceProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return MaterialApp(
          theme: value.getTheme(),
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
