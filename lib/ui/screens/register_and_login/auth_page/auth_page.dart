import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_app/ui/navigation/main_navigation.dart';
import 'sign_buttons.dart';

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
              const SizedBox(height: 60.0),
              Image.asset("assets/images/app_logo.png"),
              const SizedBox(height: 24.0),
              const Text(
                "Welcome to\nDigiNews",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.2,
                ),
              ),
              const Spacer(),
              SignButtons(
                color: Colors.black,
                icon: 'assets/images/sms.png',
                txt: 'Continue with Email',
                func: () {
                  debugPrint('email button clicked');
                },
              ),
              SignButtons(
                color: Colors.blue,
                icon: 'assets/images/fb_icon.png',
                txt: 'Continue with Facebook',
                func: () {
                  debugPrint('facebook button clicked');
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
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account?  ',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context)
                                  .pushNamed(MainNavigationRouteNames.login);
                              debugPrint('login');
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Center(
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'By continuing, you accept the ',
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                            text: ' Terms of Use',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          const TextSpan(
                            text: '  and ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text('Privacy Policy'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
