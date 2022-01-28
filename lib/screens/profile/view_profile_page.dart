import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/utils/app_colors.dart';
import 'package:news_app/utils/screen_size.dart';
import 'package:news_app/utils/static_data.dart';

import '../../../../main_navigation.dart';

class ViewProfilePage extends StatefulWidget {
  const ViewProfilePage({Key? key}) : super(key: key);

  @override
  _ViewProfilePageState createState() => _ViewProfilePageState();
}

class _ViewProfilePageState extends State<ViewProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 24),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            profileHeader(),
            const SizedBox(height: 16),
            Text(
              "I am a passionate writer, currently working as a  Content Creator at FizzBuzz. Based in Prague.",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 16),
            socialWidgets(),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Posts",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                Image.asset('assets/icons/ic_sort.png'),
              ],
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return postItem();
              },
            )
          ],
        ),
      ),
    );
  }

  Widget profileHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          maxRadius: 36,
          backgroundColor: AppColors.profileBackgroundColor,
          backgroundImage: AssetImage("assets/images/avatar_sample.png"),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Tiana vetrovs",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Passionate Writer",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(MainNavigationRouteNames.profileEdit);
            },
            child: Text(
              "Edit Profile",
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 16, color: Colors.red),
            ))
      ],
    );
  }

  Widget socialWidgets() {
    return Row(
      children: [
        Image.asset('assets/icons/ic_twitter.png'),
        SizedBox(
          width: 18,
        ),
        Image.asset('assets/icons/ic_vector.png'),
        SizedBox(
          width: 10,
        ),
        Text(
          "www.tianavetrovs.com",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        )
      ],
    );
  }

  Widget postItem() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/design_logo.png'),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Design",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey[600]),
                  ),
                  const Text(
                    "The  Only  Page  Your  Portofolio",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Needs",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            '1 week ago',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Image.asset('assets/images/img.png'),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            '12 min read',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: Screen.displayWidth(context) * 0.8 * 0.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset('assets/icons/ic_archive.png'),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Divider(
          height: 30,
          color: Colors.grey[400],
        )
      ],
    );
  }
}
