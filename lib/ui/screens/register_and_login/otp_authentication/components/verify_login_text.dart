import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerifyLoginText extends StatefulWidget {
  const VerifyLoginText({Key? key}) : super(key: key);

  @override
  State<VerifyLoginText> createState() => _VerifyLoginTextState();
}

class _VerifyLoginTextState extends State<VerifyLoginText> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    String? email = args['email'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        const Text(
          'Verify Login',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        Text('Enter OTP Code send to $email'),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('This code will expired in '),
            TweenAnimationBuilder(
              duration: const Duration(seconds: 60),
              tween: IntTween(begin: 60, end: 0),
              builder: (BuildContext context, int value, Widget? child) {
                return Text(
                  '00:${value.toInt()}',
                  style: const TextStyle(color: Colors.redAccent),
                );
              },
              onEnd: () {},
            )
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.06),
      ],
    );
  }
}
