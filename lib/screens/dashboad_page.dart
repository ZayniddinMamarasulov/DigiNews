import 'package:flutter/material.dart';
import 'package:news_app/colors.dart';
import 'package:news_app/pages/menu_page.dart';
import 'News/saved_news.dart';
import 'natification_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 49),
          Row(
            children: [
              const SizedBox(width: 26),
              IconButton(
                icon: Image.asset("assets/img_11.png"),
                iconSize: 24,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MenuPage()),
                  );
                  setState(() {});
                },
              ),
              const SizedBox(width: 190),
              IconButton(
                icon: Image.asset("assets/img_13.png"),
                iconSize: 24,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SavedNews()),
                  );
                  setState(() {});
                },
              ),
              const SizedBox(width: 29),
              signButtons(),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 24),
              const Text(
                "Popular",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              const SizedBox(width: 32),
              Text(
                "Treding",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackw400),
              ),
              const SizedBox(width: 32),
              Text(
                "Recent",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackw400),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 20),
                    Image.asset("assets/Icons/img_1.png", height: 48, width: 48),
                    SizedBox(width: 30,height: 20),
                  ],
                ),
                const SizedBox(height: 130),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Here's What You",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      const Text(
                        "Need To Know About",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      const Text(
                        "Dumplings",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            "assets/Icons/img_2.png",
                            width: 26,
                            height: 36,
                          ),
                          const SizedBox(width: 11),
                          const Text("Jean Prangley  6 min read"),
                          const SizedBox(width: 20),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.blackw400,
                                borderRadius: BorderRadius.circular(12)),
                            width: 52,
                            height: 24,
                            child: const Center(
                                child: Text(
                              "Follow",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            height: 350,
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.blue,
                image: const DecorationImage(
                    image: AssetImage("assets/img_15.png"), fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Latest News",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
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
                      const SizedBox(width: 15),
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
                  const SizedBox(height: 16),
                  Container(
                    height: 1.0,
                    width: 1.0,
                    color: AppColors.blac,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  const SizedBox(height: 16),
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
                      const SizedBox(width: 15),
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
                          const Text(
                            "Welsh schools to get &6m",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          const Text(
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
                  const SizedBox(height: 16),
                  Container(
                    height: 1.0,
                    width: 1.0,
                    color: AppColors.blac,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  const SizedBox(height: 16),
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
                      const SizedBox(width: 15),
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
                  const SizedBox(height: 16),
                  Container(
                    height: 1.0,
                    width: 1.0,
                    color: AppColors.blac,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  const SizedBox(height: 16),
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
                      const SizedBox(width: 15),
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
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                          const Text(
                            'Needs',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14),
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

  Widget signButtons() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(_createRoute());
      },
      child: Image.asset("assets/img_14.png", width: 40, height: 40),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animations, secondaryAnimation) =>
            const NotiPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOutQuad;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        });
  }
}
