import 'package:flutter/material.dart';
import 'package:news_app/screens/dashboard/notification/notification_data.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
                  child: Text(
                    "Notification",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  "Recent",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      NewsInfo(
                        imageurl: "assets/dashboard/Image (3).png",
                        name: "Christina Angel is",
                        text: "following you",
                        time: "23 min ago",
                      ),
                    ]),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {},
                      child: Text("Follow"),
                    )
                  ],
                ),
                Divider(
                  thickness: 1.0,
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NewsInfo(
                      imageurl: "assets/dashboard/Image (3).png",
                      name: "Salsabila and 200 more",
                      text: "liked your photos",
                      time: "23 min ago",
                    ),
                    Image.asset("assets/dashboard/Image (4).png")
                  ],
                ),
                SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Older Notification",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 24.0,
                ),
                NewsInfo(
                    imageurl: "assets/dashboard/Okk.png",
                    name: "Conguratulations Tiana,you have 10k\nfollowers!",
                    time: "1 day ago",
                    text: ""),
                Divider(
                  thickness: 1.0,
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      NewsInfo(
                        imageurl: "assets/dashboard/Image (3).png",
                        name: "Christina Angel is",
                        text: "following you",
                        time: "23 min ago",
                      ),
                    ]),
                    ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Colors.grey[400]),
                      onPressed: () {},
                      child: Text("Following"),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.0,
                  height: 50.0,
                ),
                NewsInfo(
                  imageurl: "assets/dashboard/Image (3).png",
                  name: "Salsabila and 200 more",
                  text: "liked your photos",
                  time: "23 min ago",
                ),
                Divider(
                  thickness: 1.0,
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NewsInfo(
                      imageurl: "assets/dashboard/Image (3).png",
                      name: "Salsabila and 200 more",
                      text: "liked your photos",
                      time: "23 min ago",
                    ),
                    Image.asset("assets/dashboard/Image (4).png")
                  ],
                ),
                Divider(
                  thickness: 1.0,
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NewsInfo(
                      imageurl: "assets/dashboard/Image (3).png",
                      name: "Salsabila and 200 more",
                      text: "liked your photos",
                      time: "23 min ago",
                    ),
                    Image.asset("assets/dashboard/Image (4).png")
                  ],
                ),
                Divider(
                  thickness: 1.0,
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NewsInfo(
                      imageurl: "assets/dashboard/Image (3).png",
                      name: "Salsabila and 200 more",
                      text: "liked your photos",
                      time: "23 min ago",
                    ),
                    Image.asset("assets/dashboard/Image (4).png")
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
