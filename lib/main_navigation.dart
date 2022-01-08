import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/home_page.dart';
import 'package:news_app/screens/dashboard_and_news_detail/notification_page/notification_page.dart';
import 'package:news_app/screens/register_and_login/auth_page/auth_page.dart';
import 'package:news_app/screens/register_and_login/forgot_password_page/forgot_password_page.dart';
import 'package:news_app/screens/register_and_login/login_page/login_page.dart';
import 'package:news_app/screens/register_and_login/otp_authentication/authentication_page.dart';
import 'package:news_app/screens/register_and_login/password_recovery/email_pass_recovery.dart';
import 'package:news_app/screens/register_and_login/password_recovery/phone_number_pass_recovery.dart';
import 'package:news_app/screens/register_and_login/signup_page/signup_page.dart';

abstract class MainNavigationRouteNames {
  static const auth = '/auth';
  static const signUp = '/auth/sign_up';
  static const login = '/login';
  static const forgotPass = '/login/forgot_pass';
  static const resetPassWithEmail = '/reset_pass_with_email';
  static const resetPassWithPhoneNumber = '/reset_pass_with_phone_number';
  static const authentication = '/auth/sign_up/authentication';
  static const home = '/home';
  static const notification = '/notification';
}

class MainNavigation {
  String initialRoute() => MainNavigationRouteNames.home;

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.auth: (context) => const AuthPage(),
    MainNavigationRouteNames.signUp: (context) => const SignupPage(),
    MainNavigationRouteNames.authentication: (context) =>
        const AuthenticationPage(),
    MainNavigationRouteNames.login: (context) => const LoginPage(),
    MainNavigationRouteNames.forgotPass: (context) =>
        const ForgotPasswordPage(),
    MainNavigationRouteNames.resetPassWithEmail: (context) =>
        const RecoveryPassByEmail(),
    MainNavigationRouteNames.resetPassWithPhoneNumber: (context) =>
        const RecoveryPassByPhoneNumber(),
    MainNavigationRouteNames.home: (context) => const HomePage(),
    MainNavigationRouteNames.notification: (context) =>
        const NotificationPage(),
  };
}
