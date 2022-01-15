import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';
import 'components/agreement_text.dart';
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
      backgroundColor: Colors.white,
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
                  Navigator.of(context)
                      .pushNamed(MainNavigationRouteNames.signUp);
                },
              ),
              Text("Text"),
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
