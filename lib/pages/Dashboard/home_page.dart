import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
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
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() { });
  }

  void _handlerTab(){
    setState(() {
      print(_tabController.index);
    });
  }
  void _handleMuneButtonPressed(){
    _advancedDrawerController.showDrawer();
  }
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 300),
      backdropColor: Colors.black,
      controller: _advancedDrawerController,
        childDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32)
        ),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: ()=> _handleMuneButtonPressed(),
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
        ),
      drawer: SafeArea(
        child: Container(
            child:ListTileTheme(
              textColor: Colors.white,
              iconColor: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24,bottom: 8,top: 36),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          maxRadius: 36,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage("assets/user_1.png"),
                        ),
                        const SizedBox(height: 14,),
                        const Text('Tiana Vetrovs',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
                        FlatButton(onPressed:(){
                        },
                            child: const Text("View Profile",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),)
                        )
                      ],
                    )

                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.home),
                    title: const Text("Home"),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.bookmark),
                    title: const Text("Saved News"),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.edit),
                    title: const Text("Write news"),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.credit_card),
                    title: const Text("Membership"),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.help),
                    title: const Text("Help"),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.settings),
                    title: const Text("Setting"),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.logout),
                    title: const Text("log out"),
                  ),
                 const Padding(
                   padding: EdgeInsets.only(left: 16,top: 28),
                   child: Text('Version 1.0',style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: 14,
                     color:AppColors.colorE8
                   ),),
                 )
                ],
              ),
            )
        ),
      ),
    );
  }
}
