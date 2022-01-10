import 'package:flutter/material.dart';
import 'package:news_app/models/carousel_item.dart';
import 'package:news_app/utils/app_colors.dart';
import 'package:news_app/utils/app_colors.dart';
import 'package:news_app/utils/app_colors.dart';

class PopularBanner extends StatefulWidget {
  CarouselItem item;

  PopularBanner({Key? key, required this.item}) : super(key: key);

  @override
  _PopularBannerState createState() => _PopularBannerState();
}

class _PopularBannerState extends State<PopularBanner> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.only(right: 12),
        width: MediaQuery.of(context).size.width,
        height: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(widget.item.banner),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.item.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 6.0),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage(
                      'assets/images/avatar_1.png',
                    ),
                    backgroundColor: Colors.pink,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    widget.item.author.name,
                    style: const TextStyle(color: AppColors.appBlack),
                  ),
                  Text(" • ${widget.item.readTime} min read • "),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        onPrimary: AppColors.appBlack,
                        primary: Colors.grey[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      child: const Text('Food'))
                ],
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
