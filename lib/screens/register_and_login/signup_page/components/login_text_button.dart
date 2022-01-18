import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Center(
        child: RichText(
          text: TextSpan(
            text: 'Already registered?  ',
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
                    print('login');
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
