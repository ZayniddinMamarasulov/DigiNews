import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/components/popular_banner.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/components/popular_carousel.dart';
import 'package:news_app/utils/app_colors.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  _PopularPageState createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    final Widget svgBanner = SvgPicture.asset(
      'assets/images/test3.svg',
      width: MediaQuery.of(context).size.width,
      height: 320,
    );
    return Column(children: [
      PopularCarousel(),
      Expanded(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: [
              Container(
                height: 60,
                color: Colors.red,
                margin: EdgeInsets.all(4.0),
              ),
              Container(
                height: 60,
                color: Colors.red,
                margin: EdgeInsets.all(4.0),
              ),
              Container(
                height: 60,
                color: Colors.red,
                margin: EdgeInsets.all(4.0),
              ),
              Container(
                height: 60,
                color: Colors.red,
                margin: EdgeInsets.all(4.0),
              ),
              Container(
                height: 60,
                color: Colors.red,
                margin: EdgeInsets.all(4.0),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
