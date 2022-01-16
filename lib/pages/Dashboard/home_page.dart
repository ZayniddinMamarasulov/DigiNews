import 'package:flutter/material.dart';
import 'package:news_app/pages/Dashboard/popular_page.dart';
import 'package:news_app/pages/Dashboard/resent_page.dart';
import 'package:news_app/pages/Dashboard/trending_page.dart';
import 'package:news_app/utils/app_colors.dart';

import 'natification_page.dart';

class HomePage extends StatefulWidget {
  static const String id="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with TickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() { });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon:Image.asset("assets/button1.png"),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon:Image.asset("assets/button3.png"),
          ),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, NatificationPage.id);
            },
            icon:Image.asset("assets/button2.png"),
          ),
        ],
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:    [
          SizedBox(height: 16,),
          TabBar(
            controller: _tabController,
                isScrollable: true,
                labelStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900
                ),
                  //labelColor: AppColors.selectedColor,
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400
                  ),
                  indicatorColor: Colors.white,
              labelColor: AppColors.selectedColor,
                  unselectedLabelColor: AppColors.unselectedColor,
                  tabs:const [
                Tab(text: "Popular",),
                Tab(text: "Trending",),
                Tab(text: "Resent",),
              ]),Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                 PopularPage(),
                  TrendingPage(),
                  ResentPage(),
                ],
              )
          )

        ],
      ),
      drawer: const Drawer(),
    );
  }
}
