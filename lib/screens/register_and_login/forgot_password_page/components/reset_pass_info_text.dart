import 'package:flutter/material.dart';

class ResetPassInfoText extends StatelessWidget {
  const ResetPassInfoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Reset Password',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          const SizedBox(height: 8),
          Text(
            'Select verification method and we will send verification code',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}
