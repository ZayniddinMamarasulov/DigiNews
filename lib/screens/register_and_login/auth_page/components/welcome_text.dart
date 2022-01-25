import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatefulWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomeText> createState() => _WelcomeTextState();
}

class _WelcomeTextState extends State<WelcomeText> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.02),
        Image.asset("assets/images/app_logo.png"),
        SizedBox(height: height * 0.025),
        const Text(
          "welcomeDigiNews",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
        ).tr(),
        const SizedBox(height: 80),
      ],
    );
  }
}
