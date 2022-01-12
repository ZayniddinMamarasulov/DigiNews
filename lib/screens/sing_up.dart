import 'package:flutter/material.dart';

import '../colors.dart';
import 'otp_auth.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100, width: 100),
          const Text(
            " Sing Up",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "  It only takes minute to create your accont",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Your name",
              ),
            ),
          ),
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
                labelText: "Your emile addres",
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
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.black),
              height: 56,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children:   [
                    SizedBox(width: 120),
                    signButtons(),
                    SizedBox(width: 80),
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
      child: Text(
        "Create account",
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
        pageBuilder: (context, animations, secondaryAnimation) => OtpAuth(),
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
