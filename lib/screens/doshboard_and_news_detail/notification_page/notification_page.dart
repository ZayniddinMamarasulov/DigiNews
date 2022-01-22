import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news_app/screens/doshboard_and_news_detail/notification_page/recent_notifications.dart';
import 'package:news_app/screens/register_and_login/login_page/components/app_bar.dart';

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