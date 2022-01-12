import 'package:flutter/material.dart';
import '../colors.dart';
import 'dashboad_page.dart';

class LogingScrin extends StatefulWidget {
  const LogingScrin({Key? key}) : super(key: key);

  @override
  _LogingScrinState createState() => _LogingScrinState();
}

class _LogingScrinState extends State<LogingScrin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100, width: 100),
          const Text(
            " Welcome back!",
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
            "  Enter your email addres and password to login",
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
              "Emile",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Your email addres",
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
                  style: TextStyle(color: Colors.red,
                      fontWeight: FontWeight.w400,fontSize: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 100),
          signButtons(),

        ],
      ),
    );
  }
  Widget signButtons() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(_createRoute());
      },
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.black),
          height: 56,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [
                SizedBox(width: 150),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 125),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animations, secondaryAnimation) => DashboardPage(),
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
        }
        );
  }
}