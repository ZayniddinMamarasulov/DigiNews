import 'package:flutter/material.dart';
import 'package:news_app/screens/dashboard/components/drawer_page.dart';
import 'package:news_app/screens/dashboard/popular_page.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        DrawerPage.of(context)!.toggle();
                      });
                    },
                    icon: Image.asset("assets/Icons/Menu.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 240.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/Icons/Search.png"),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/Icons/Notification.png"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                labelStyle: const TextStyle(
                    fontSize: 22.0, fontWeight: FontWeight.w900),
                indicatorColor: Colors.white,
                labelColor: Colors.grey.shade900,
                unselectedLabelColor: Colors.grey.shade400,
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w400),
                tabs: const [
                  Text("Popular"),
                  Text(" Trending"),
                  Text(" Recent"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  PopularPage(),
                  Text("data"),
                  Text("data"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
