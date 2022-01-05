import 'package:flutter/material.dart';
import 'package:news_app/ui/navigation/main_navigation.dart';

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
          'Forgot password',
          style: TextStyle(color: Colors.redAccent),
        ),
      ),
    );
  }
}
