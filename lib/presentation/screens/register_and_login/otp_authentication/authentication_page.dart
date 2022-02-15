import 'package:flutter/material.dart';

import 'components/app_bar.dart';
import 'components/enter_otp_code.dart';
import 'components/resend_code.dart';
import 'components/verify_login_text.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
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
              VerifyLoginText(),
              EnterCodeForm(),
              ResendCode(),
            ],
          ),
        ),
      ),
    );
  }
}
