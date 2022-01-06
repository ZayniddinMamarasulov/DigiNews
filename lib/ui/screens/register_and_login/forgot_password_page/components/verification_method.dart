import 'package:flutter/material.dart';
import 'package:news_app/ui/navigation/main_navigation.dart';

class VerificationMethod extends StatefulWidget {
  const VerificationMethod({
    Key? key,
  }) : super(key: key);

  @override
  State<VerificationMethod> createState() => _VerificationMethodState();
}

class _VerificationMethodState extends State<VerificationMethod> {
  int selectMethod = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        resetPassMethod(
          methodTxt: 'Email',
          text: 'Send to your email',
          icon: 'email.png',
          method: 1,
        ),
        resetPassMethod(
          methodTxt: 'Phone Number',
          text: 'Send to your phone number',
          icon: 'phone.png',
          method: 2,
        ),
        Container(
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
            child: const Text(
              'Continue',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey.shade900),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget resetPassMethod({
    required String methodTxt,
    required String text,
    required String icon,
    required int method,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectMethod = method;
          debugPrint(method.toString());
        });
      },
      child: Container(
        height: 80,
        margin: const EdgeInsets.only(top: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selectMethod == method
                ? Colors.redAccent
                : Colors.grey.shade200,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
              child: CircleAvatar(
                backgroundColor: selectMethod == method
                    ? Colors.redAccent
                    : Colors.grey.shade100,
                radius: 25,
                child: Image.asset(
                  'assets/images/$icon',
                  color: selectMethod == method ? Colors.white : Colors.black,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  methodTxt,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
