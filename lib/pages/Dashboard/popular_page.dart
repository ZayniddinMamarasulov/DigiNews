import 'package:flutter/material.dart';
import 'package:news_app/pages/Dashboard/Componnts/popular_banner.dart';
import 'package:news_app/pages/Dashboard/Componnts/popular_carousel.dart';

class PopularPage extends StatefulWidget {
  static const String id="popular_page";
  const PopularPage({Key? key}) : super(key: key);

  @override
  _PopularPageState createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PopularCarousel(),
        Expanded(
          child: Column(
            children: [
              Container(

              )
            ],
          ),
        )
      ],
    );
  }
}
