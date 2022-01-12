import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:news_app/screens/dashboard_and_news_detail/home/components/popular_banner.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/components/popular_carousel.dart';
// import 'package:news_app/utils/app_colors.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'list_page.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  _PopularPageState createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    final Widget svgBanner = SvgPicture.asset(
      'assets/images/popular_page.dart',
      width: MediaQuery.of(context).size.width,
      height: 320,
    );
    return Column(children: [
      PopularCarousel(),
      buildIndicator(),
      const Listpage(),
    ]);
  }
  Widget buildIndicator() => buildIndicator(
    // activeIndex: activeIndex,
    //count: popularBanners(),
  );
}
