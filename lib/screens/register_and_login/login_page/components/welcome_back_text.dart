import 'package:flutter/material.dart';

class WelcomeBackText extends StatelessWidget {
  const WelcomeBackText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
