import 'package:flutter/material.dart';
import 'package:news_app/models/banner_items.dart';

class Banners extends StatefulWidget {
  CarouselItem item;
  Banners({Key? key, required this.item}) : super(key: key);

  @override
  _BannersState createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24.0, right: 24.0),
      width: double.infinity,
      height: 320.0,
      decoration: BoxDecoration(
          color: Colors.white54.withOpacity(1.0),
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(widget.item.banner))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                widget.item.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 16.0,
                backgroundColor: Colors.black,
                child: Image.asset(
                  widget.item.author.imgUrl,
                  width: 36.0,
                ),
              ),
              Text(
                  "${widget.item.author.name} * ${widget.item.readTime} min read *"),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white38,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0))),
                  child: const Text(
                    "Food",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
          const SizedBox(
            height: 24.0,
          )
        ],
      ),
    );
  }
}
