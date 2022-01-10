import 'package:flutter/material.dart';
import 'package:news_app/screens/home/notification/follow_widgets.dart';
import 'package:news_app/screens/home/notification/liked_widgets.dart';
import 'package:news_app/screens/register_and_login/login_page/components/app_bar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Notification",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            const Text(
              "Recent",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            recentNotification(),
            const SizedBox(height: 16),
            const Text(
              "Older Notification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            olderNotification(),
            followingInfo(),
            const Divider(
              color: Colors.black45,
              thickness: 0.4,
              height: 2,
            ),
            followingYouInfo(),
            const Divider(
              color: Colors.black45,
              thickness: 0.4,
              height: 2,
            ),
            likedYourPost(),
          ],
        ),
      ),
    );
  }
}

Container olderNotification() {
  return Container(
    margin: const EdgeInsets.only(right: 16, top: 12),
    child: Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://png.pngtree.com/png-vector/20210703/ourlarge/pngtree-thank-you-10k-followers-or10000-celebration-modern-black-vector-design-png-image_3548058.jpg"),
              maxRadius: 24,
            ),
            const SizedBox(width: 8),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 275,
                    height: 45,
                    child: Text(
                      "Congratulations Tiana, you have 10k followers!",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Text(
                    "23 minut age",
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        const SizedBox(height: 14),
        const Divider(
          height: 1,
          color: Colors.black26,
          thickness: 1,
        )
      ],
    ),
  );
}

SizedBox recentNotification() {
  return SizedBox(
    height: 175,
    width: double.infinity - 50,
    //  color: Colors.red,
    child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Column(
            children: [
              followInfo(index),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Divider(
                  color: Colors.black45,
                  thickness: 0.4,
                  height: 2,
                ),
              ),
              likedPost(index),
            ],
          );
        }),
  );
}
