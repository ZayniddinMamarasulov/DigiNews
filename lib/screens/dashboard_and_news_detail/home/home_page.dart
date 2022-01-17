import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:news_app/main_navigation.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/popular_page.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/recent_page.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/trending_page.dart';
import 'package:news_app/utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handlerTab);
  }

  void _handlerTab() {
    setState(() {
      print(_tabController.index);
    });
  }

  void _handleMuneButtonPressed() {
    _advancedDrawerController.showDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      animationCurve: Curves.easeInOut,
      backdropColor: Colors.black,
      animateChildDecoration: true,
      animationDuration: const Duration(milliseconds: 300),
      controller: _advancedDrawerController,
      childDecoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Image.asset('assets/icons/ic_menu.png'),
            onPressed: () {
              _handleMuneButtonPressed();
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/ic_search.png'),
            ),
            IconButton(
              onPressed: () => Navigator.of(context)
                  .pushNamed(MainNavigationRouteNames.notification),
              icon: Image.asset('assets/icons/ic_notification.png'),
            ),
            const SizedBox(width: 18.0)
          ],
          automaticallyImplyLeading: false,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            TabBar(
              controller: _tabController,
              isScrollable: true,
              labelStyle: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w900,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
              ),
              indicatorColor: Colors.white,
              labelColor: AppColors.appBlack,
              unselectedLabelColor: AppColors.unSelectedTabColor,
              tabs: [
                Tab(text: 'Popular'),
                Tab(text: 'Trending'),
                Tab(text: 'Recent'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  PopularPage(),
                  TrendingPage(),
                  RecentPage(),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 12),
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 18, bottom: 12, top: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        maxRadius: 36,
                        backgroundColor: Colors.white,
                        backgroundImage:
                            AssetImage("assets/images/avatar_sample.png"),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Tiana Vetrovs",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "View Profile",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.colorE8,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.bookmark),
                  title: Text("Saved News"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, MainNavigationRouteNames.writeNews);
                  },
                  leading: Icon(Icons.edit),
                  title: Text("Write news"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.credit_card),
                  title: Text("Membership"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.help),
                  title: Text("Help"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.settings),
                  title: Text("Setting"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.logout),
                  title: Text("Log out"),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16, top: 36),
                  child: Text(
                    "Version 1.0",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.colorE8,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
