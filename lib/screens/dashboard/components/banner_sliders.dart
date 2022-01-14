import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:news_app/screens/dashboard/components/banners.dart';
import 'package:news_app/utils/static_data.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({Key? key}) : super(key: key);

  @override
  _BannerSliderState createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: StaticData.Banners.length,
      itemBuilder: (BuildContext context, int itemIndex, pageViewIndex) =>
          Container(
        child: Banners(item: StaticData.Banners[itemIndex]),
      ),
      options: CarouselOptions(
          height: 320.0,
          autoPlay: false,
          viewportFraction: 0.9,
          initialPage: 0,
          enlargeCenterPage: true),
    );
  }
}
