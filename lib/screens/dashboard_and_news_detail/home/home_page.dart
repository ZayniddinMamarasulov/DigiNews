import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(MainNavigationRouteNames.writeNews);
          },
          child: const Text('write news'),
        ),
        leading: IconButton(
          icon: Image.asset('assets/icons/ic_menu.png'),
          onPressed: () => Scaffold.of(context).openDrawer(),
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
          const SizedBox(width: 18.0),
          IconButton(
            onPressed: () => Navigator.of(context)
                .pushNamed(MainNavigationRouteNames.savedNews),
            icon: const Icon(Icons.bookmark),
          ),
          const SizedBox(width: 18.0),
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
    );
  }
}
