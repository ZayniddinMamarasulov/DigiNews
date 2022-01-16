import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:news_app/main_navigation.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/popular_page.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/recent_page.dart';
import 'package:news_app/screens/dashboard_and_news_detail/home/trending_page.dart';
import 'package:news_app/utils/app_colors.dart';

import 'components/custom_advanced_drawer.dart';

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
  }

  void _handleMuneButtonPressed() {
    _advancedDrawerController.showDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return CustomAdvancedDrawer(
      advancedDrawerController: _advancedDrawerController,
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
            _homeTabBar(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  PopularPage(),
                  TrendingPage(),
                  RecentPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  TabBar _homeTabBar() {
    return TabBar(
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
      tabs: const [
        Tab(text: 'Popular'),
        Tab(text: 'Trending'),
        Tab(text: 'Recent'),
      ],
    );
  }
}
