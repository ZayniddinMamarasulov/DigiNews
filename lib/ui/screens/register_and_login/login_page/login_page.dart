import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_app/ui/navigation/main_navigation.dart';
import 'package:news_app/ui/utils/app_bar.dart';
import 'package:news_app/ui/screens/register_and_login/login_page/components/form_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Enter your email address and password to login',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                ],
              ),
              const FormFields(),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Don’t have an account?  ',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context)
                                  .pushNamed(MainNavigationRouteNames.signUp);
                              debugPrint('sign up');
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
