import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ResendCode extends StatefulWidget {
  const ResendCode({Key? key}) : super(key: key);

  @override
  _ResendCodeState createState() => _ResendCodeState();
}

class _ResendCodeState extends State<ResendCode> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
        child: RichText(
            text: TextSpan(
          text: 'Didn’t received the code? ',
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
          children: [
            TextSpan(
              text: ' Resend Code',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('re-send code');
                },
              style: const TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        )),
      ),
    );
  }
}
