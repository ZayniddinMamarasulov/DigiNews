import 'package:flutter/material.dart';
import 'package:news_app/utils/app_colors.dart';

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
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: AppColors.profileBackgroundColor,
                  backgroundImage:
                      AssetImage("assets/images/avatar_sample.png"),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Passionate Writer",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () {
                      // Navigator.of(context)
                      //     .pushNamed(MainNavigationRouteNames.edit);
                    },
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.red),
                    ))
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "I am a passionate writer, currently working as a  Content Creator at FizzBuzz. Based in Prague.",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
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
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Posts",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                Image.asset('assets/icons/ic_sort.png'),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView(
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
                                const SizedBox(width: 114),
                                Image.asset('assets/icons/ic_archive.png')
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
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 96,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/images/post_image_3.png")),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
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
                            "5 Fashion Trend for Spring",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "2021 You Should Know",
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
                                    '4 days ago',
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
                                    '8 min read',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(width: 114),
                              Image.asset('assets/icons/ic_archive.png')
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(
                    height: 30,
                    color: Colors.grey[400],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/design_logo.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
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
                              SizedBox(width: 114),
                              Image.asset('assets/icons/ic_archive.png')
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(
                    height: 30,
                    color: Colors.grey[400],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/design_logo.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
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
                              SizedBox(width: 114),
                              Image.asset('assets/icons/ic_archive.png')
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
