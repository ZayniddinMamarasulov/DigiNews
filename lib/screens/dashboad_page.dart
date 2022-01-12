import 'package:flutter/material.dart';
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
      body: Column(children: [
        SizedBox(height: 49),
        Row(children: [
          SizedBox(width: 26),
          IconButton(
            icon: Image.asset("assets/img_11.png"),
            iconSize: 24,
            onPressed: () {
              setState(() {});
            },
          ),
          SizedBox(width: 190),
          IconButton(
            icon: Image.asset("assets/img_13.png"),
            iconSize: 24,
            onPressed: () {
              setState(() {});
            },
          ),
          SizedBox(width: 29),
          signButtons(),
        ],),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/img_15.png',
            width: 360.0,
            height: 400.0,
            fit: BoxFit.fill,
          ),
        ),

      ],),
    );
  }
  Widget signButtons() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(_createRoute());
      },
      child: Image.asset("assets/img_14.png",width: 40,height: 40),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animations, secondaryAnimation) => NotiPage(),
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
