import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'It only  takes a minute to create your account',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 28),
      ],
    );
  }
}
