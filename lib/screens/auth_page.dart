import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/colors.dart';
import 'package:news_app/screens/home_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            height: size.height * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60.0),
                Image.asset("assets/app_logo.png"),
                const SizedBox(height: 24.0),
                const Text(
                  "Welcome to DigiNews",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 48),
                signButtons(
                    imageUrl: "assets/sms.png",
                    color: Colors.black,
                    onTap: (){
                      debugPrint("Continue with Email");
                    },
                    borderColor: Colors.transparent,
                    textColor: Colors.white,
                    name: "Continue with Email"),
                const SizedBox(height: 16),
                signButtons(
                    imageUrl: "assets/facebook.png",
                    color: Colors.black,
                    textColor: Colors.white,
                    onTap: (){
                      debugPrint("Continue with Facebook");
                    },
                    borderColor: Colors.transparent,
                    name: "Continue with Facebook"),
                const SizedBox(height: 16),
                signButtons(
                    imageUrl: "assets/google.png",
                    color: Colors.transparent,
                    textColor: Colors.black,
                    onTap: (){
                      debugPrint("Continue with Google");
                    },
                    borderColor: const Color(0xffA6A6A6),
                    name: "Continue with Google"),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                          color: Color(0xffA6A6A6),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("Login",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w900)),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24, bottom: 16),
              child: Text(
            "By continuing, you accept the Terms of Use and Privacy Policy ",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                textAlign: TextAlign.center,
          )),
        ],
      ),
    );
  }

  Widget signButtons(
      {String? imageUrl,
      String? name,
      Color? color,
      Color? borderColor,
      Color? textColor,
      Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: borderColor!, width: 2),
            borderRadius: BorderRadius.circular(12),
            color: color),
        height: 56,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(imageUrl!),
              const SizedBox(width: 54),
              Text(
                name!,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: textColor),
              )
            ],
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animations, secondaryAnimation) =>
            const HomePage(),
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
