import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/screens/register_and_login/signup_page/signup_page.dart';
import 'screens/register_and_login/auth_page/auth_page.dart';
import 'screens/register_and_login/onbaring_page/onbaring_page.dart';
import 'screens/register_and_login/otp_authentication/authentication_page.dart';
import 'screens/register_and_login/signin_page/signin_page.dart';

abstract class MainNavigationRouteNames {
  static const auth = '/auth';
  static const signUp = '/auth/sign_up';
  static const signIn = '/auth/sign_in';
  static const signUpWithAuth = '/auth/sign_in/sign_up';
  static const signWithIn = '/sign_up/sign_in';
  static const home = '/home';
  static const onboring = '/onboring';
  static const forgotPass = '/sign_in/forgot_pass';
  static const verifyLogin = '/sign_in/vefiy_login';
}

class MainNavigation {
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.auth: (context) => AuthPage(),
    MainNavigationRouteNames.onboring: (context) => const OnbaringPage(),
    MainNavigationRouteNames.home: (context) => HomePage(),
    MainNavigationRouteNames.signUp: (context) => SignUpPage(),
    MainNavigationRouteNames.signIn: (context) => SignInPage(),
    MainNavigationRouteNames.signWithIn: (context) => SignInPage(),
    MainNavigationRouteNames.signUpWithAuth: (context) => SignUpPage(),
    MainNavigationRouteNames.verifyLogin: (context) => AuthenticationPage(),
  };
}
