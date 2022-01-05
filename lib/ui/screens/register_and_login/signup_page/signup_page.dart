import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/register_and_login/signup_page/components/login_text_button.dart';

import 'components/app_bar.dart';
import 'components/form_fields.dart';
import 'components/sign_up_text.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
              const SignUpText(),
              FormFields(),
              const LoginTextButton(),
            ],
          ),
        ),
      ),
    );
  }
}
