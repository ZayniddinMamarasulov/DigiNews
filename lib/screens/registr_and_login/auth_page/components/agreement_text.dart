import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AgreementText extends StatelessWidget {
  const AgreementText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0, bottom: 8),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: 'By continuing, you accept the ',
                style: const TextStyle(
                  color: Colors.grey,
                ),
                children: [
                  TextSpan(
                    text: ' Terms of Use',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('wow');
                      },
                  ),
                  const TextSpan(
                    text: '  and ',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print('hi');
              },
              child: const Text('Privacy Policy'),
            ),
          ],
        ),
      ),
    );
  }
}
