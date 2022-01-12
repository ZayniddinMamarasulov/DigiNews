import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/components/popular_banner.dart';
import 'package:news_app/utils/static_data.dart';

class PopularCarousel extends StatefulWidget {
  PopularCarousel({Key? key}) : super(key: key);

  @override
  _PopularCarouselState createState() => _PopularCarouselState();
}

class _PopularCarouselState extends State<PopularCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: StaticData.popularBanners.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
              child: PopularBanner(
        item: StaticData.popularBanners[itemIndex],

      )),
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 0.9,
        initialPage: 0,
        enlargeCenterPage: true,
        height: 360.0,
        enableInfiniteScroll: false,

      ),

    );
  }
  // Widget buildIndicator()=>AnimatedSmoothIndicator(
  //   activeIndex: activeIndex,
  //   count: popularBanners.length,
  // );
}
