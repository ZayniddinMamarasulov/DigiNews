import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/colors.dart';
import 'package:news_app/screens/auth/forgot/forgot_email.dart';
import 'package:news_app/screens/auth/forgot/forgot_number.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isEmail =false;
  bool isPhone =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Container(
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
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child: Text(
                        'Select verification method and we will send verification code',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
                            fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    OutlinedButton(
                        onPressed: () {
                          setState(() {
                            isEmail = true;
                            isPhone = false;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 16,bottom: 16,left: 5),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/email.svg'),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                    const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                    child: Text(
                                      'Email',
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                    child: Text(
                                      'Send to your email',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.grey,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          side: BorderSide(color: isEmail?AppColors.red:AppColors.white),
                        )),
                    const SizedBox(height: 18,),
                    OutlinedButton(
                        onPressed: () {
                         setState(() {
                           isPhone = true;
                           isEmail = false;

                         });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 16,bottom: 16,left: 5),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/phone.svg'),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                    const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                    child: Text(
                                      'Phone Number',
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                    child: Text(
                                      'Send to your phone number',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          side: BorderSide(color: isPhone?AppColors.red:AppColors.white),
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 24),
                    child: ElevatedButton(
                      onPressed: () {
                        if(isEmail){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotEmail()));
                        }else{
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotNumber()));
                        }
                      },
                      child: const Padding(
                        padding:  EdgeInsets.all(18.0),
                        child: Text(
                          'Continue',
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
          ],
        ),
      ),
    );
  }
}
