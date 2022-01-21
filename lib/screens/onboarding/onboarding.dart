import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/register_and_login/auth_page/auth_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'components/carusel_indicators.dart';
import 'components/custom_app_bar.dart';
import 'components/custom_circle_button.dart';
import 'components/custom_images.dart';
import 'components/custom_text.dart';

class OnboardingApp extends StatefulWidget {
  const OnboardingApp({Key? key}) : super(key: key);

  @override
  _OnboardingAppState createState() => _OnboardingAppState();
}

class _OnboardingAppState extends State<OnboardingApp> {
  var images = CustomImages.images;
  var texts = CustomText.texts;

  int currentIndex = 0;
  double percent = 0.33;

  final _imagePageController = PageController();

  @override
  Widget build(BuildContext context) {
    /*final height = MediaQuery.of(context).size.height -
        customAppBar().preferredSize.height;*/

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                imagesInPageView(),
                CustomCaruselIndicators(currentIndex: currentIndex),
                texts[currentIndex],
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(22),
            child: CircularPercentIndicator(
              radius: 100,
              lineWidth: 4.0,
              percent: percent,
              animationDuration: 800,
              animateFromLastPercent: true,
              animation: true,
              backgroundColor: Colors.transparent,
              progressColor: Colors.black,
              center: GestureDetector(
                onTap: pageViewController,
                child: const CustomCircleButton(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void pageViewController() {
    if (_imagePageController.hasClients && currentIndex == 0) {
      _imagePageController.animateToPage(1,
          duration: const Duration(microseconds: 1000), curve: Curves.easeIn);
      percent = 0.66;
    }

    // button bosilganda pageview 1 dan 2 ga o'tyabdi
    if (_imagePageController.hasClients && currentIndex == 1) {
      _imagePageController.animateToPage(2,
          duration: const Duration(microseconds: 1000), curve: Curves.easeIn);
      percent = 1;
    }

    // button bosilganda pageviev 2 dan home page ga o'tyabdi
    if (currentIndex == 2) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const AuthPage()),
        (route) => false,
      );
    }
  }

  SizedBox imagesInPageView() {
    return SizedBox(
      child: PageView.builder(
        physics: const ScrollPhysics(),
        controller: _imagePageController,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return images[index];
        },
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;

            if (value == 0) percent = 0.33;
            if (value == 1) percent = 0.66;
            if (value == 2) percent = 1;
          });
        },
      ),
      height: 340,
    );
  }
}
