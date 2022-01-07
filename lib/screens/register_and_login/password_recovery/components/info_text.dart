import 'package:flutter/material.dart';

class ResetPassInfoText extends StatelessWidget {
  final String method;
  const ResetPassInfoText({
    Key? key,
    required this.method,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        const Text(
          'Reset Password',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 12),
        Text(
          'Enter your $method and we will send you a link to reset your password.',
          style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
