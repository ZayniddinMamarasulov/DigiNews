import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';

import 'dart:core';

import 'package:news_app/models/onboarding_info.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = OnboardingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 36.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/splash.png",
                    width: 328.0,
                    height: 32.0,
                    alignment: Alignment.bottomLeft,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, MainNavigationRouteNames.auth);
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: Color(0xFFD8605D),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ),
            SizedBox(
                height: 600.0,
                child: PageView.builder(
                    itemCount: _controller.onboardingPages.length,
                    // physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 88.0),
                            child: Image.asset(
                              _controller.onboardingPages[index].imageAsset,
                              height: 340.0,
                              width: 375.0,
                            ),
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          Text(
                            _controller.onboardingPages[index].title,
                            style: const TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            _controller.onboardingPages[index].description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ],
                      );
                    })),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.arrow_right_alt_rounded, color: Colors.white),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20.0),
                primary: Colors.black,
                onPrimary: Colors.grey,
              ),
            ),
          ],
        ),
        Row()
      ]),
    );
  }
}
