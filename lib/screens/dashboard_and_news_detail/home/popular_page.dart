import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/models/author.dart';
import 'package:news_app/models/carousel_item.dart';
// import 'package:news_app/screens/dashboard_and_news_detail/home/components/popular_banner.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/components/popular_carousel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:news_app/utils/app_colors.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'list_page.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  _PopularPageState createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  get activeIndex => Data();
  get popularBanners => Data();

  @override
  Widget build(BuildContext context) {
    // final Widget banner = SvgPicture.asset(
    //   'assets/images/popular_page.dart',
    //   width: MediaQuery.of(context).size.width,
    //   height: 320,
    // );
    return Column(children: [
      PopularCarousel(),
      buildIndicator(),
      const Listpage(),
    ]);
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: popularBanners.length,
  );
}
class Data{
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
}



