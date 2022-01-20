import 'package:flutter/material.dart';

import '../../colors.dart';
import '../natification_page.dart';

class SavedNews extends StatefulWidget {
  const SavedNews({Key? key}) : super(key: key);

  @override
  _SavedNewsState createState() => _SavedNewsState();
}

class _SavedNewsState extends State<SavedNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 49),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Row(
              children: [
                IconButton(
                  icon: Image.asset("assets/Icons/img_detailNews.png"),
                  iconSize: 24,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NotiPage()),
                    );
                    setState(() {});
                  }
                ),
                const SizedBox(width: 220),
                IconButton(
                  icon: Image.asset("assets/img_13.png"),
                  iconSize: 24,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NotiPage()),
                    );
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: const [
                Text(
                  "Bookmarks",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(48), // Image radius
                          child: Image.asset('assets/Image/girl.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Beauty",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColors.blackw700),
                          ),
                          const Text(
                            'Benefit Serum For Protect',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            'Your Skin',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            '1 day ago  2 min read',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 1.0,
                    width: 1.0,
                    color: AppColors.blac,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(48), // Image radius
                          child: Image.asset('assets/Image/img_detailNews.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Education",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColors.blackw700),
                          ),
                          Text(
                            "Welsh schools to get &6m",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "anti-Covid air technology",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            '1 day ago  2 min read',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 1.0,
                    width: 1.0,
                    color: AppColors.blac,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(48), // Image radius
                          child: Image.asset('assets/Image/img_1.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fashion",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColors.blackw700),
                          ),
                          const Text(
                            '5 Fashion Trend for Spring',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            '2021 You Should Know',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            '4 days ago  8 min read',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(width: 40),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 1.0,
                    width: 1.0,
                    color: AppColors.blac,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(48), // Image radius
                          child: Image.asset('assets/Image/img_2.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Design",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColors.blackw700),
                          ),
                          const Text(
                            'The Only Page Your Portofolio',
                            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),
                          ),
                          const Text(
                            'Needs',
                            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),
                          ),
                          const Text(
                            '1 week ago  12 min read',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
