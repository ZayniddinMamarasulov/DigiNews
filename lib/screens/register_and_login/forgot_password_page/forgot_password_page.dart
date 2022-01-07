import 'package:flutter/material.dart';
import 'package:news_app/screens/register_and_login/forgot_password_page/components/reset_pass_info_text.dart';
import 'package:news_app/screens/register_and_login/login_page/components/app_bar.dart';

import 'components/verification_method.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: const [
              ResetPassInfoText(),
              VerificationMethod(),
            ],
          ),
        ),
      ),
    );
  }
}
