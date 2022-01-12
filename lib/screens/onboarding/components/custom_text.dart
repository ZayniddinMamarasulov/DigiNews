import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomText({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text1,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 22, right: 22),
          child: Text(
            text2,
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

  static List<Widget> texts = [
    const CustomText(
      text1: 'Discover Curated News',
      text2: 'Keep up-to-date with the actual and valid news everyday',
    ),
    const CustomText(
      text1: 'Update News Everyday',
      text2: 'Get the recent news everyday with DigiNews',
    ),
    const CustomText(
      text1: 'Browse by Categories',
      text2: 'Get the recent news everyday with DigiNews',
    ),
  ];
}
