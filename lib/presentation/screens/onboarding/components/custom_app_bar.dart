import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/register_and_login/auth_page/auth_page.dart';

AppBar customAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/app_logo.png',
          height: 28,
        ),
        const Text(
          ' DigiNews',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const AuthPage()),
            (route) => false,
          );
        },
        child: const Text(
          'skip',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 17,
          ),
        ).tr(),
      ),
    ],
  );
}
