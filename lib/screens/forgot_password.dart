import 'package:flutter/material.dart';
import 'package:news_app/colors.dart';
import 'package:news_app/screens/sign_up.dart';
import 'package:news_app/main.dart';
import 'forgot_password.dart';
import 'forgot_password.dart';
import 'package:news_app/colors.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 56,
            ),
            InkWell(
              child: Image.asset('assets/arrow-left.png'),
              onTap: () => {Navigator.pop(context)},
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Reset Password',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Select verification method and we will send verification code',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black38,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            InkWell(
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset('assets/sms.png'),
                        backgroundColor: Colors.red,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                           Text('Email',style: TextStyle(
                            fontSize: 16,
                             fontWeight: FontWeight.w700,
                          ),),
                          SizedBox(height: 4,),
                          Text('Send to your email',style: TextStyle(
                            fontSize: 16,
                             fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),)
                        ],
                      )

                    ],
                  ),
                ),

              ),
            ),
            SizedBox(height: 24,),

            InkWell(
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset('assets/call.png'),
                        backgroundColor: AppColors.avatarBg,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Phone Number',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),),
                          SizedBox(height: 4,),
                          Text('Send to your phone number',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),)
                        ],
                      )

                    ],
                  ),
                ),

              ),
            ),

            Expanded(child: Container()),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                height: 56,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              onTap: () => {
              },
            ),

          ],
        ),
      ),
    );
  }
}





