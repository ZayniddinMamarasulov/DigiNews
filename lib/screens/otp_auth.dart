import 'package:flutter/material.dart';

import '../colors.dart';
import 'login_scrin.dart';

class OtpAuth extends StatefulWidget {
  const OtpAuth({Key? key}) : super(key: key);

  @override
  _OtpAuthState createState() => _OtpAuthState();
}

class _OtpAuthState extends State<OtpAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100, width: 100),
          const Text(
            " Verify Login",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Enter OTP Code send to tianarxx@gmail.com",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                children: const [
                  Text(
                    "  This code will expirend in ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "  01:30",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Emile",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),

                labelText: "Your email address",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Your password",
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.black),
              height: 56,
              width: double.infinity,
              child: Padding(
                padding:  EdgeInsets.all(16),
                child: Row(
                  children: [
                    const SizedBox(width: 150),
                     signButtons(),
                    const SizedBox(width: 125),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget signButtons() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(_createRoute());
      },
      child:  Text(
        "Login",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animations, secondaryAnimation) => LogingScrin(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOutQuad;

          var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        });
  }
}