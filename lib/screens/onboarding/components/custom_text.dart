import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String text1;
  final String text2;
  const CustomText({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();

  static List<Widget> texts = [
    const CustomText(
      text1: 'onTitle1',
      text2: 'onText1',
    ),
    const CustomText(
      text1: 'onTitle2',
      text2: 'onText2',
    ),
    const CustomText(
      text1: 'onTitle3',
      text2: 'onText3',
    ),
  ];
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.text1.tr(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 22, right: 22),
          child: Text(
            widget.text2.tr(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
