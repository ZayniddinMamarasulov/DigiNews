import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/screens/customread_page/font_size.dart';
import 'package:news_app/screens/customread_page/hero_animation.dart';
import 'package:news_app/utils/app_colors.dart';

class NewsDetail extends StatefulWidget {
  const NewsDetail({Key? key}) : super(key: key);

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  final bool _pinned = false;
  final bool _snap = false;
  final bool _floating = false;

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final news = args['news'] as News;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 700,
            width: double.infinity,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  pinned: _pinned,
                  floating: _floating,
                  snap: _snap,
                  expandedHeight: 395,
                  backgroundColor: Colors.white,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 60),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Image.asset("assets/icons/img_icon1.png",
                                    color: Colors.white, height: 24, width: 24),
                                onPressed: () {
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 335),
                            child: IconButton(
                              icon: Image.asset(
                                  "assets/icons/ic_font_setting.png",
                                  color: Colors.white,
                                  width: 24,
                                  height: 24),
                              onPressed: () {
                                showDialog(
                                  barrierDismissible: true,
                                  useRootNavigator: true,
                                  context: context,
                                  builder: (context) => const HeroPage(),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 180),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      width: 52,
                                      height: 24,
                                      child: Center(
                                          child: Text(
                                        news.category,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    const SizedBox(width: 11),
                                    const Text("6 min read 10 mins ago"),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  news.title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: NetworkImage(news.image),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Row(
                          children: [
                            authContainer(),
                            const SizedBox(width: 26),
                            likeButton(),
                            const SizedBox(width: 16),
                            commentButton()
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            Text(
                              news.content,
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 2 * count,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blackw700),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                hintText: "Write comments...",
                counterStyle: TextStyle(
                    color: AppColors.blackw300,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                icon: Image.asset("assets/icons/ic_send.png",
                    height: 48, width: 48),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget likeButton() {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(_createRoute());
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.blackw100,
            borderRadius: BorderRadius.circular(40)),
        width: 85,
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/like.png", width: 24, height: 24),
            const SizedBox(width: 10),
            const Text(
              "634",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget authContainer() {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(_createRoutes());
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(40)),
        width: 155,
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/avatar.png",
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 10),
            const Text(
              "Jean Prangley",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget commentButton() {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(_createRouteEnd());
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.blackw100,
            borderRadius: BorderRadius.circular(40)),
        width: 70,
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.comment),
            SizedBox(width: 10),
            Text(
              "32",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
