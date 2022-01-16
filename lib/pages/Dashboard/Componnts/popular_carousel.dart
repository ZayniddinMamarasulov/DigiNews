import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/pages/Dashboard/Componnts/popular_banner.dart';

class PopularCarousel extends StatefulWidget {
  const PopularCarousel({Key? key}) : super(key: key);

  @override
  _PopularCarouselState createState() => _PopularCarouselState();
}

class _PopularCarouselState extends State<PopularCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.89,
          autoPlay: true,
          initialPage: 0,
          enlargeCenterPage: true,
          height: 400.0,
       enableInfiniteScroll: false
      ),
      items: [1,2,3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return const PopularBanner();
          },
        );
      }).toList(),
    );
  }
}
