import 'package:flutter/cupertino.dart';

class OnboardingInfo {
  final imageAsset;
  final title;
  final description;

  OnboardingInfo(this.imageAsset, this.title, this.description);
}

class OnboardingController {
  void nextPage() {}
  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
      "assets/onboarding/photo.png",
      "Discover Curated News",
      "Keep up-to-date with the actual and valid \n news everyday",
    ),
    OnboardingInfo("assets/onboarding/photo2.png", "Update News Everyday",
        "Get the recent news everyday with \n DigiNews"),
    OnboardingInfo("assets/onboarding/photo3.png", "Browse by  Categories",
        "Keep up-to-date with the actual and valid\n news everyday"),
  ];
}
