import 'package:flutter/material.dart';
import 'package:news_app/screens/register_and_login/login_page/components/app_bar.dart';
import 'package:news_app/screens/register_and_login/login_page/components/form_fields.dart';
import 'package:news_app/screens/register_and_login/login_page/components/signup_text_button.dart';
import 'package:news_app/screens/register_and_login/login_page/components/welcome_back_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              WelcomeBackText(),
              FormFields(),
              SignUptextButton(),
            ],
          ),
        ),
      ),
    );
  }
}
