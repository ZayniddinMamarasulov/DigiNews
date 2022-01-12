import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 109),
              Image.asset("assets/Icons/img_16.png", height: 70, width: 70),
              SizedBox(height: 16),
              Text(
                "Tiana Vetrovs",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: 4),
              const Text(
                "View Profiles",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.white),
              ),
              SizedBox(height: 42),
              Row(
                children: [
                  Image.asset("assets/Icons/img_17.png", width: 30, height: 30),
                  SizedBox(width: 20),
                  Text(
                    "Home",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 36),
              Row(
                children: [
                  Image.asset("assets/Icons/img_18.png", width: 30, height: 30),
                  SizedBox(width: 20),
                  const Text(
                    "Saved News",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 36),
              Row(
                children: [
                  Image.asset("assets/Icons/img_19.png", width: 30, height: 30),
                  SizedBox(width: 20),
                  const Text(
                    "Write News",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 36),
              Row(
                children: [
                  Image.asset("assets/Icons/img_20.png", width: 30, height: 30),
                  SizedBox(width: 20),
                  Text(
                    "Membershio",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 36),
              Row(
                children: [
                  Image.asset("assets/Icons/img_21.png", width: 30, height: 30),
                  SizedBox(width: 20),
                  const Text(
                    "Help",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 36),
              Row(
                children: [
                  Image.asset("assets/Icons/img_22.png", width: 30, height: 30),
                  SizedBox(width: 20),
                  const Text(
                    "Setting",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 36),
              Row(
                children: [
                  Image.asset("assets/Icons/img_23.png", width: 30, height: 30),
                  SizedBox(width: 20),
                  const Text(
                    "Logout",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 40),
              const Text(
                "Version 1.0",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
