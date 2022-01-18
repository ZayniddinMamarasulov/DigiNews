import 'package:easy_localization/src/public_ext.dart';
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
          'resetPass',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ).tr(),
        const SizedBox(height: 12),
        Text(
          'senPhoneText',
          style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w400),
        ).tr(args: [method]),
      ],
    );
  }
}
