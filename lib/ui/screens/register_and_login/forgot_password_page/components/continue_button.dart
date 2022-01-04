import 'package:flutter/material.dart';
import 'package:news_app/ui/navigation/main_navigation.dart';

class ContinueButton extends StatelessWidget {
  final int selectMethod;
  const ContinueButton({Key? key, required this.selectMethod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.36),
      child: ElevatedButton(
        onPressed: () {
          if (selectMethod == 1) {
            Navigator.of(context)
                .pushNamed(MainNavigationRouteNames.resetPassWithEmail);
          } else if (selectMethod == 2) {
            Navigator.of(context)
                .pushNamed(MainNavigationRouteNames.resetPassWithPhoneNumber);
          } else {
            null;
          }
        },
        child: buildText(),
        style: buildButtonStyle(),
      ),
    );
  }
}

Text buildText() {
  return const Text(
    'Continue',
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
  );
}

ButtonStyle buildButtonStyle() {
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.grey.shade900),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
