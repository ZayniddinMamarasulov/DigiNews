import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/carousel_item.dart';
import 'package:news_app/utils/colors.dart';


class PopularBanner extends StatefulWidget {
  final CarouselItem item;
  final int currentIndex;
  final CarouselController carouselController;

  const PopularBanner(
      {Key? key,
        required this.carouselController,
        required this.item,
        required this.currentIndex})
      : super(key: key);

  @override
  _PopularBannerState createState() => _PopularBannerState();
}

class _PopularBannerState extends State<PopularBanner> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      _bannerBackgroundImage(context),
      _bannerBackgroundGradient(context),
      Container(
        alignment: Alignment.topRight,
        margin: const EdgeInsets.only(top: 24, right: 36),
        child: CircleAvatar(
          backgroundColor: Colors.grey[900],
          radius: 20,
          child: const Icon(
            Icons.bookmark_add,
            color: Colors.white,
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(right: 12),
        width: MediaQuery.of(context).size.width,
        height: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.item.title,
                style:
                const TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage(
                      'assets/images/avatar_1.png',
                    ),
                    backgroundColor: Colors.pink,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    widget.item.author.name,
                    style: const TextStyle(color: AppColors.appBlack),
                  ),
                  const SizedBox(width: 4),
                  Text(" • ${widget.item.readTime} min read • "),
                  const SizedBox(width: 4),
                  SizedBox(
                    height: 28,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        onPrimary: AppColors.appBlack,
                        primary: Colors.grey[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      child: const Text(
                        'Food',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              CustomIndicator(currentIndex: widget.currentIndex),
            ],
          ),
        ),
      ),
    ]);
  }

  Container _bannerBackgroundGradient(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: MediaQuery.of(context).size.width,
      height: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Colors.transparent,
            Colors.white70,
          ],
        ),
      ),
    );
  }

  Container _bannerBackgroundImage(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: MediaQuery.of(context).size.width,
      height: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(widget.item.banner),
        ),
      ),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  final int currentIndex;

  const CustomIndicator({Key? key, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainer(0),
        buildContainer(1),
        buildContainer(2),
      ],
    );
  }

  Container buildContainer(int index) {
    return Container(
      height: 4,
      margin: const EdgeInsets.only(right: 8),
      width: 28,
      decoration: BoxDecoration(
        color: index == currentIndex ? Colors.grey[900] : Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}