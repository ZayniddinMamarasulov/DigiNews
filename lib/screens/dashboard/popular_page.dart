import 'package:flutter/material.dart';
import 'package:news_app/screens/dashboard/components/banner_sliders.dart';
import 'package:news_app/screens/dashboard/components/list_details.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  State<PopularPage> createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        const BannerSlider(),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Latest News",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "See more",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.red),
                ),
              ),
            ],
          ),
        ),
        ListDetail(),
      ],
    ));
  }
}
