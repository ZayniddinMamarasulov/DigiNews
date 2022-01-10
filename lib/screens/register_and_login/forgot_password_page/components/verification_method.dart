import 'package:flutter/material.dart';

import 'continue_button.dart';

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
        ContinueButton(selectMethod: selectMethod),
      ],
    );
  }

  // email yoki nomer metodlarini custom shakli
  // qaysi biridir bosilganda ikkala metoddan bittasini selectMethod olvoladi oziga
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
