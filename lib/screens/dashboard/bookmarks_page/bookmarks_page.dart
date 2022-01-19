import 'package:flutter/material.dart';
import 'package:news_app/screens/dashboard/bookmarks_page/bookmarks_data.dart';

class BookMarksPage extends StatelessWidget {
  const BookMarksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/Icons/Search.png"),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24.0, bottom: 24.0),
              child: Text(
                "Bookmarks",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
              ),
            ),
            BookMData(
                imgUrl: "assets/dashboard/Image (1).png",
                title: "Beauty",
                theme: "Welsh Schools to get &6m\nanti-covid air technology",
                time: "1 day ago * 4 min read"),
            BookMData(
                imgUrl: "assets/dashboard/Image (2).png",
                title: "Beauty",
                theme: "Welsh Schools to get &6m\nanti-covid air technology",
                time: "1 day ago * 4 min read"),
            BookMData(
                imgUrl: "assets/dashboard/Image (1).png",
                title: "Beauty",
                theme: "Welsh Schools to get &6m\nanti-covid air technology",
                time: "1 day ago * 4 min read"),
            BookMData(
                imgUrl: "assets/dashboard/Image (2).png",
                title: "Beauty",
                theme: "Welsh Schools to get &6m\nanti-covid air technology",
                time: "1 day ago * 4 min read"),
          ],
        ),
      ),
    );
  }
}
