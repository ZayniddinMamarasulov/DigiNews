import 'package:flutter/material.dart';

import '../auth_page/components/login_text_button.dart';
import 'components/app_bar.dart';
import 'components/form_fields.dart';
import 'components/sign_up_text.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 16, right: 24),
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
