import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AgreementText extends StatelessWidget {
  const AgreementText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.14),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: '',
                children: [
                  TextSpan(
                    text: ('byContinuing').tr(),
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: 'termsOfUse'.tr(),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  TextSpan(
                    text: 'and'.tr(),
                    style: const TextStyle(
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
              child: const Text('privacyPolicy').tr(),
            ),
          ],
        ),
      ),
    );
  }
}
