import 'package:flutter/material.dart';

class ListDetail extends StatefulWidget {
  const ListDetail({Key? key}) : super(key: key);

  @override
  _ListDetailState createState() => _ListDetailState();
}

class _ListDetailState extends State<ListDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/dashboard/Image (1).png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Beauty",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Benifit Serium For Protect\nYour Skin",
                      style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "1 day ago * 4 min read",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/Icons/Bookmark-Outline.png"))
              ],
            ),
          ),
          const Divider(
            height: 40.0,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/dashboard/Image (1).png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Beauty",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Benifit Serium For Protect\nYour Skin",
                      style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "1 day ago * 4 min read",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/Icons/Bookmark-Outline.png"))
              ],
            ),
          ),
          const Divider(
            height: 40.0,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/dashboard/Image (1).png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Beauty",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Benifit Serium For Protect\nYour Skin",
                      style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "1 day ago * 4 min read",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/Icons/Bookmark-Outline.png"))
              ],
            ),
          ),
          const Divider(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
