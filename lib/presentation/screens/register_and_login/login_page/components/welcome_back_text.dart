import 'package:easy_localization/src/public_ext.dart';
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
          'welcomeBack',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ).tr(),
        const SizedBox(height: 8),
        Text(
          'enterYourEmail',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w400,
          ),
        ).tr(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.08),
      ],
    );
  }
}
