import 'package:easy_localization/src/public_ext.dart';
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
          'verifyLogin',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ).tr(),
        const SizedBox(height: 8),
        Text('${'verifyText1'.tr()} $email'),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('verifyText2').tr(),
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
