import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_app/ui/navigation/main_navigation.dart';
import 'package:news_app/ui/utils/app_bar.dart';
import 'components/form_fields.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'It only  takes a minute to create your account',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 28),
                ],
              ),
              const FormFields(),
              Padding(
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
                              debugPrint('login');
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
