import 'package:flutter/material.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/home_page.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/popular_page.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/recent_page.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/trending_page.dart';
import 'package:news_app/screens/forgot_password.dart';
import 'package:news_app/screens/login_page.dart';
import 'package:news_app/screens/notification_page.dart';
import 'package:news_app/screens/sign_up.dart';

abstract class MainNavigationNames {
  static const home = '/home';
  static const popularpage = '/popularpage';
  static const recentpage = '/recentpage';
  static const trendingpage = '/trendingpage';
  static const notification = '/notification';
  static const loginpage = '/loginpage';
  static const forgotpasword = '/forgotpassword';
  static const resetpasword = '/resetpassword';
  static const mainpage = '/mainpage';
  static const signup = '/signup';


}

class MainNavigation {
  String initialRoute() => MainNavigationNames.home;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationNames.home: (context) => const HomePage(),
    MainNavigationNames.popularpage: (context) => const PopularPage(),
    MainNavigationNames.recentpage: (context) => const RecentPage(),
    MainNavigationNames.trendingpage: (context) => const TrendingPage(),
    MainNavigationNames.notification: (context) => const NotificatinPage(),
    MainNavigationNames.signup: (context) => const SignUpPage(),
    MainNavigationNames.forgotpasword: (context) => const ForgotPasswordPage(),
    MainNavigationNames.resetpasword: (context) => const ForgotPasswordPage(),

  };
}
