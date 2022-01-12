import 'package:flutter/material.dart';
import 'package:news_app/colors.dart';
import 'package:news_app/screens/sign_up.dart';
import 'package:news_app/main.dart';
import 'forgot_password.dart';
import 'forgot_password.dart';
import 'package:news_app/models/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              'Welcome back!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Enter your email address and password to login',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black38,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            const Text(
              'Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Your email adress',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  )),
            ),
            SizedBox(height: 16),
            const Text(
              'Password',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  )),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              TextButton(onPressed: ()=>{
               Navigator.pushNamed(context, MainNavigationNames.forgotpasword)
              }, child: const Text('Forgot Password',style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.red,
              ),) )
            ],),
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
              onTap: () => {},
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(onPressed: ()=>{
                  Navigator.pushNamed(context, MainNavigationNames.signup)
                }, child: const Text('SignUp',style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}





