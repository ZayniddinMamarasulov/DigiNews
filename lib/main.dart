import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:news_app/utils/app_theme.dart';

import 'main_navigation.dart';
import 'services/auth_firebase_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final _auth = AuthFirebaseService();
  bool chekadUser = await _auth.chekadUser();

  runApp(NewsApp(install: chekadUser));
}

class NewsApp extends StatelessWidget {
  final bool? install;
  NewsApp({
    Key? key,
    this.install,
  }) : super(key: key);

  static final mainNavigation = MainNavigation();
  final _auth = AuthFirebaseService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News App",
      debugShowCheckedModeBanner: false,
      theme: DigiTheme.light(),
      initialRoute: install!
          ? MainNavigationRouteNames.home
          : MainNavigationRouteNames.onboring,
      routes: mainNavigation.routes,
    );
  }
}
