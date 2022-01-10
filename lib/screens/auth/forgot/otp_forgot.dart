import 'package:flutter/material.dart';
import 'package:news_app/screens/auth/forgot/otp_form.dart';

import '../../../colors.dart';

class OtpForgot extends StatefulWidget {
  const OtpForgot({Key? key}) : super(key: key);

  @override
  _OtpForgotState createState() => _OtpForgotState();
}

class _OtpForgotState extends State<OtpForgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    size: 30,
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Text(
                    'Verify Login',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
                  child: Text(
                    'Enter OTP Code send to xxx@gamil.com',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey,
                        fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      ' This code will in ',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey,
                          fontSize: 16),
                    ),
                    TweenAnimationBuilder(
                      tween: Tween(begin: 59.0, end: 0),
                      duration: Duration(seconds: 59),
                      builder: (_, dynamic value, child) => Text(
                        '00:${value.toInt()}',
                        style: TextStyle(
                            color: AppColors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                OtpForm(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn’t received the code?",
                        style: TextStyle(fontSize: 14, color: AppColors.grey),
                      ),
                      GestureDetector(
                          child: Text(
                        " Resend Code",
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.red,
                            fontWeight: FontWeight.w600),
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
