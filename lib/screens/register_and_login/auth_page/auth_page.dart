import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';
import 'package:news_app/main.dart';
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
  bool isLight = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isLight = !isLight;
                        StreamContrl.setTheme.add(isLight);
                      });
                    },
                    icon: Icon(
                      Icons.wb_sunny_rounded,
                      color: isLight ? Colors.black : Colors.orange,
                    ),
                  ),
                ),
                const WelcomeText(),
                SignButtons(
                  color: Colors.black,
                  icon: 'assets/images/sms.png',
                  txt: 'Continue with Email',
                  func: () {
                    print('email');
                  },
                ),
                SignButtons(
                  color: Colors.blue,
                  icon: 'assets/images/fb_icon.png',
                  txt: 'Continue with Facebook',
                  func: () {
                    print('facebook');
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
                const LoginTextButton(),
                const AgreementText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
