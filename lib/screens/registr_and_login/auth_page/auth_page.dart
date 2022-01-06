import 'package:flutter/material.dart';
import 'package:news_app/colors.dart';
import 'package:news_app/screens/registr_and_login/auth_page/components/agreement_text.dart';

import 'components/login_text_button.dart';
import 'components/sign_buttons.dart';
import 'components/welcome_text.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeText(),
              SignButtons(
                color: Colors.black,
                icon: 'assets/images/sms.png',
                txt: 'Continue with Email',
                func: () {
                  print('email');
                  showSnackbar(context, 'email button clicked');
                },
              ),
              SignButtons(
                color: Colors.blue,
                icon: 'assets/images/fb_icon.png',
                txt: 'Continue with Facebook',
                func: () {
                  showSnackbar(context, 'facebook button clicked');
                },
              ),
              SignButtons(
                color: Colors.white,
                icon: 'assets/images/google_icon.png',
                txt: 'Continue with Google',
                func: () {
                  showSnackbar(context, 'google button clicked');
                },
              ),
              const LoginTextButton(),
              const AgreementText(),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackbar(BuildContext context, String text) {
    final snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
