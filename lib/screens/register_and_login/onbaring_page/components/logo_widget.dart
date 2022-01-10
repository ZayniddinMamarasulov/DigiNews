import 'package:flutter/material.dart';

import '../../../../main_navigation.dart';

Widget logoWidget(context) {
  return Container(
    margin: const EdgeInsets.only(top: 40.0, left: 30, right: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/app_logo.png',
            ),
            const SizedBox(
              width: 12,
            ),
            const Text(
              'DigitNews',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .popAndPushNamed(MainNavigationRouteNames.auth);
          },
          child: const Text(
            "Skip",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.normal,
                color: Color.fromRGBO(216, 96, 93, 1)),
          ),
        )
      ],
    ),
  );
}
