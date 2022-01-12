import 'package:flutter/cupertino.dart';
import 'package:news_app/models/author.dart';
import 'package:news_app/models/carousel_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StaticData {
  int activeIndex = 0;
  static List<CarouselItem> popularBanners = [
    CarouselItem(
        'Omikron O‘zbekistonda. SSV ehtiyot choralari kuchaytirilishini ma’lum qildi',
        'assets/images/popular_banner.png',
        Author('kun.uz', 'kun.uz rasm'),
        5),
    CarouselItem(
        'Maktablarda ham qishki ta’til uzaytirildi',
        'assets/images/popular_banner.png',
        Author('kun.uz', 'kun.uz rasm'),
        6),
    CarouselItem(
        'Honor buklanuvchi smartfonini taqdim etdi',
        'assets/images/popular_banner.png',
        Author('kun.uz', 'kun.uz rasm'),
        7),

  ];
  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: popularBanners.length,
  );
}
