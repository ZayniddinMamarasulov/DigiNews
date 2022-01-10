import 'package:flutter/material.dart';

import 'components/app_bar.dart';
import 'components/form_fields.dart';
import 'components/signup_button.dart';
import 'components/welcome_back_text.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WelcomeBackText(),
                FormFields(),
                const SignUpButton(),
              ],
            ),
          ),
        ));
  }
}
