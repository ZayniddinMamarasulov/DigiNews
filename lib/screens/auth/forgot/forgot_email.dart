import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:news_app/screens/auth/forgot/otp_forgot.dart';

import '../../../colors.dart';
class ForgotEmail extends StatefulWidget {
  const ForgotEmail({Key? key}) : super(key: key);

  @override
  _ForgotEmailState createState() => _ForgotEmailState();
}

class _ForgotEmailState extends State<ForgotEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
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
                            'Reset Password',
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          // alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          child: Text(
                            'Enter your phone number and we will send you a link to reset your password.',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.grey,
                                fontSize: 16),
                          ),
                        ),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Text("Email",style: TextStyle(color: AppColors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    width: double.infinity,
                    height: 56,
                    margin: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.red),

                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                     border: InputBorder.none,

                   ),

                    ),

                  ),
                ],
              ),
              Container(

                transformAlignment: Alignment.bottomCenter,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    vertical: 40, horizontal: 24),
                child: ElevatedButton(
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpForgot()));
                  },
                  child: const Padding(
                    padding:  EdgeInsets.all(18.0),
                    child: Text(
                      'Send OTP Code',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
                      backgroundColor:
                      MaterialStateProperty.all(AppColors.black),
                      alignment: Alignment.center),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
