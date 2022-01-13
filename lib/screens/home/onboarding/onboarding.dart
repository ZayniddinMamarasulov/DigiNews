import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';
import 'package:news_app/screens/register_and_login/auth_page/auth_page.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        onPageChanged: (index) {
          debugPrint("$index");
        },
        children: [
          buildContainer(1),
          buildContainer(2),
          buildContainer(3),
          const AuthPage(),
        ],
      ),
    );
  }

  Container buildContainer(int index) {
    final size = MediaQuery.of(context).size;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      width: double.infinity,
      height: size.height - statusBarHeight,
      margin: EdgeInsets.only(top: statusBarHeight),
      child: Column(
        children: [
          Container(
            height: 65,
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/app_logo.png"),
                const SizedBox(
                  width: 8,
                ),
                const Text("DigiNews",
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff121212),
                        fontWeight: FontWeight.w900)),
                const Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, MainNavigationRouteNames.auth);
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
              Image.asset(
                "assets/images/onboarding$index.png",
                width: 250,
              ),
              const SizedBox(height: 32),
              Image.asset("assets/images/indicator$index.png"),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  Text("Discover Curated News",
                      style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff121212),
                          fontWeight: FontWeight.w700)),
                  SizedBox(height: 16),
                  Text(
                      "Keep up-to-date with the actual and valid news everyday",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffA6A6A6),
                          fontWeight: FontWeight.w400)),
                ],
              )),
          const SizedBox(height: 24),
          Image.asset("assets/images/button$index.png"),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
