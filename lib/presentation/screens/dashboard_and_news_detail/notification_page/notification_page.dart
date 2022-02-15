import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/dashboard_and_news_detail/notification_page/recent_notifications.dart';
import 'package:news_app/presentation/screens/dashboard_and_news_detail/saved_page/app_bar.dart';

import 'older_notifications.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Notification',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                RecentNotifications(),
                OlderNotifications(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
