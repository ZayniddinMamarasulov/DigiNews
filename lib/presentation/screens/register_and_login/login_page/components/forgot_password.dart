import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MainNavigationRouteNames.forgotPass);
        },
        child: const Text(
          'forgotPassword',
          style: TextStyle(color: Colors.redAccent),
        ).tr(),
      ),
    );
  }
}
