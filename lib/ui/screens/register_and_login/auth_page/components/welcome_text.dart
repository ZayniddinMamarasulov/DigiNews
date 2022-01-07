import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

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
          "Welcome to\nDigiNews",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}
