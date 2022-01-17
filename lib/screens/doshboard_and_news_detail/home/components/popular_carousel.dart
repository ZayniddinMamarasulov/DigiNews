import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/utils/static_data.dart';
import 'popular_banner.dart';

class PopularCarousel extends StatefulWidget {
  PopularCarousel({Key? key}) : super(key: key);

  @override
  _PopularCarouselState createState() => _PopularCarouselState();
}

class _PopularCarouselState extends State<PopularCarousel> {
  int currentIndex = 0;
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CarouselSlider.builder(
        carouselController: controller,
        itemCount: StaticData.popularBanners.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return PopularBanner(
            carouselController: controller,
            item: StaticData.popularBanners[itemIndex],
            currentIndex: currentIndex,
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          onPageChanged: (index, _) {
            setState(() {
              currentIndex = index;
            });
          },
          viewportFraction: 0.9,
          initialPage: 0,
          enlargeCenterPage: true,
          height: 360.0,
          enableInfiniteScroll: false,
        ),
      ),
    );
  }
}