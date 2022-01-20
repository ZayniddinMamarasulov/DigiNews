import 'package:flutter/material.dart';
import 'package:news_app/colors.dart';

import 'dashboad_page.dart';

class NotiPage extends StatefulWidget {
  const NotiPage({Key? key}) : super(key: key);

  @override
  _NotiPageState createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 49),
          IconButton(
            icon: Image.asset("assets/Icons/img_detailNews.png"),
            iconSize: 24,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DashboardPage()),
              );
              setState(() {});
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              "Notification",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recent",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.red,
                            borderRadius: BorderRadius.circular(50)),
                        height: 40,
                        child: Image.asset("assets/img_2.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Chiristina Angel',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'following you',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '23 mins ago',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(width: 70),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.red,
                            borderRadius: BorderRadius.circular(12)),
                        width: 73,
                        height: 36,
                        child: const Center(
                            child: Text(
                          "Follow",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1.0,
                  width: 1.0,
                  color: AppColors.blac,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.red,
                            borderRadius: BorderRadius.circular(50)),
                        width: 40,
                        height: 40,
                        child: Image.asset("assets/img_4.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Salsabila",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 4),
                            Text("and 200 more"),
                          ],
                        ),
                        const Text(
                          'liked your post',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          '40 mins ago',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10)),
                        width: 90,
                        height: 80,
                        child: Image.asset(
                          "assets/img_icon1.png",
                          height: 60,
                          width: 70,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Older Notification",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.red1,
                            borderRadius: BorderRadius.circular(50)),
                        width: 40,
                        height: 40,
                        child: Image.asset("assets/img_6.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Congratulations Tiana, you have 10k ',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'followings!',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '1 day ago',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(width: 40),
                  ],
                ),
                Container(
                  height: 1.0,
                  width: 1.0,
                  color: AppColors.blac,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.red,
                            borderRadius: BorderRadius.circular(50)),
                        width: 40,
                        height: 40,
                        child: Image.asset("assets/img_2.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Justin Horan',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'is following',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        const Text(
                          'you',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          '1 days ago',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.oq,
                            borderRadius: BorderRadius.circular(12)),
                        width: 90,
                        height: 36,
                        child: const Center(
                            child: Text(
                          "Follow",
                          style: TextStyle(color: Colors.black),
                        )),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1.0,
                  width: 1.0,
                  color: AppColors.blac,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.red1,
                            borderRadius: BorderRadius.circular(50)),
                        width: 40,
                        height: 40,
                        child: Image.asset("assets/img_6.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Jassica',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 4),
                            Text("and 200 more following you"),
                          ],
                        ),
                        const Text(
                          '2 day ago',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(width: 40),
                  ],
                ),
                Container(
                  height: 1.0,
                  width: 1.0,
                  color: AppColors.blac,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.red,
                            borderRadius: BorderRadius.circular(50)),
                        width: 40,
                        height: 40,
                        child: Image.asset("assets/img_4.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Salsabila",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 4),
                            Text("and 200 more"),
                          ],
                        ),
                        const Text(
                          'liked your post',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          '40 mins ago',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10)),
                        width: 90,
                        height: 80,
                        child: Image.asset(
                          "assets/img_8.png",
                          height: 60,
                          width: 70,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1.0,
                  width: 1.0,
                  color: AppColors.blac,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)),
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Salsabila",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 4),
                            Text("and 200 more"),
                          ],
                        ),
                        const Text(
                          'liked your post',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          '40 mins ago',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10)),
                        width: 90,
                        height: 80,
                        child: Image.asset(
                          "assets/img_8.png",
                          height: 60,
                          width: 70,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1.0,
                  width: 1.0,
                  color: AppColors.blac,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.red,
                            borderRadius: BorderRadius.circular(50)),
                        width: 40,
                        height: 40,
                        child: Image.asset("assets/img_4.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Salsabila",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Text("and 200 more"),
                          ],
                        ),
                        const Text(
                          'liked your post',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          '40 mins ago',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10)),
                        width: 90,
                        height: 80,
                        child: Image.asset(
                          "assets/img_icon1.png",
                          height: 60,
                          width: 70,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
