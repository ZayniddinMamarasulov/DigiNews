import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/auth_page.dart';
import 'package:news_app/screens/forgot_password.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/screens/sign_up.dart';
import 'package:news_app/screens/login_page.dart';

import '../main.dart';
import 'login_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 124.0),
                Image.asset("assets/app_logo.png"),
                const SizedBox(height: 24.0),
                const Text(
                  "Welcome to DigiNews",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 64),
                signButtons(),
                const SizedBox(height: 16),
                signWithFb(),
                const SizedBox(height: 16),
                signWithGoogle(),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(' Already have an account?', style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14
                    ),),
                    TextButton(
                        onPressed: () => {

                          Navigator.push(context, (login()))
                        },
                        child: const Text(
                          ' Login ',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ))
                  ],
                ),
                Expanded(child: Container()),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                        text: 'By contunuing, you accept the ',
                        style: TextStyle(
                            color: Colors.grey)),
                    TextSpan(
                        text: 'Terms of Use ',
                        style: TextStyle(
                            color: Colors.black)),
                    TextSpan(
                        text: 'and ',
                        style: TextStyle(color: Colors.grey)),
                    TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: Colors.black))
                  ]),
                ),
                SizedBox(height: 40,)
             ]
          ),

        ),
      ),
    )
    );
  }

  Widget signButtons() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(createRoute());
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.black),
        height: 56,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset('assets/sms.png'),
              const SizedBox(width: 54),
              const Text(
                "Continue with Email",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget signWithFb() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(createRoute());
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.blue),
        height: 56,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset('assets/facebook.png'),
              const SizedBox(width: 54),
              const Text(
                "Continue with Facebook",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget signWithGoogle() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(createRoute());
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey),
        ),
        height: 56,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset('assets/google.png'),
              const SizedBox(width: 54),
              const Text(
                "Continue with Google",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}
