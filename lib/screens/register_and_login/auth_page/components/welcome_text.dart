import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 80.0),
        Image.asset(
          'assets/images/app_logo.png',
        ),
        const SizedBox(height: 24.0),
        const Text(
          "Welcome To\nDigiNews",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}
