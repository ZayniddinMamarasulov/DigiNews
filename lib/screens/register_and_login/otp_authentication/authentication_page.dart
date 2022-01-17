import 'package:flutter/material.dart';
import 'package:news_app/screens/register_and_login/login_page/components/app_bar.dart';
import 'package:news_app/screens/register_and_login/otp_authentication/components/resend_code.dart';
import 'package:news_app/screens/register_and_login/otp_authentication/components/verify_login_text.dart';

import '../../../main_navigation.dart';
import 'components/enter_otp_code.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerifyLoginText(),
              EnterCodeForm(),
              ResendCode(),
              TextButton(
                  onPressed: (){
                    Navigator.of(context)
                        .pushNamed(MainNavigationRouteNames.home);
                  },
                  child: Text("Text")
              )
            ],
          ),
        ),
      ),
    );
  }
}
