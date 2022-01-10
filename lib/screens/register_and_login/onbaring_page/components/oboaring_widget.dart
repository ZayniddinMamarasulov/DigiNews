import 'package:flutter/material.dart';

List<Widget> onboaringWigdget(context) {
  int count = 0;
  List<Widget> list = [];
  pageString().forEach((element) {
    list.add(Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          element.image!,
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.4,
          fit: BoxFit.fill,
        ),
      ],
    ));
  });
  return list;
}

List<Widget> titleSting(context) {
  int count = 0;
  List<Widget> list = [];
  pageString().forEach((element) {
    list.add(Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(element.title!,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 20,
            right: 20,
          ),
          child: Center(
            child: Text(element.description!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromRGBO(109, 109, 109, 1),
                  fontSize: 20,
                )),
          ),
        ),
      ],
    ));
  });
  return list;
}

List<PageModel> pageString() {
  return [
    PageModel(
      image: "assets/images/Illustration_1.png",
      title: "Discover Curated News",
      description: "Keep up-to-date with the actual and valid \nnews everyday",
    ),
    PageModel(
      image: "assets/images/Illustration_2.png",
      title: "Update News Everyday",
      description: "Get the recent news everyday with \nDigiNews",
    ),
    PageModel(
      image: "assets/images/Illustration_3.png",
      title: "Browse by Categories",
      description: "Get the recent news everyday with \nDigiNews",
    ),
  ];
}

List<Widget> buildPageIndicator(int _currentPage) {
  List<Widget> list = [];
  for (int i = 0; i < 3; i++) {
    list.add(i == _currentPage ? indicator(true) : indicator(false));
  }
  return list;
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 150),
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    height: 8.0,
    width: isActive ? 30.0 : 24.0,
    decoration: BoxDecoration(
      color: isActive
          ? const Color.fromRGBO(18, 18, 18, 1)
          : const Color.fromRGBO(232, 232, 232, 1),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
    ),
  );
}

class PageModel {
  final String? image;
  final String? title;
  final String? description;

  PageModel({this.image, this.title, this.description});
}
