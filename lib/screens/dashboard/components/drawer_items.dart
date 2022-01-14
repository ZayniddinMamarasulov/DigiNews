import 'package:flutter/material.dart';

import 'menu_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SafeArea(
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 56.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 24.0,
                          backgroundImage:
                              AssetImage("assets/dashboard/Image.png"),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Text(
                          "Tiana Vetrovs",
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "View profile",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ))
                      ],
                    )),
                MenuItems(title: "Home", image: "assets/Icons/Home-Fill.png"),
                MenuItems(
                    title: "Saved News",
                    image: "assets/Icons/Bookmark-Outline.png"),
                MenuItems(
                    title: "Write News",
                    image: "assets/Icons/Write-Outline.png"),
                MenuItems(
                    title: "Membership",
                    image: "assets/Icons/Membership-Outline.png"),
                MenuItems(title: "Help", image: "assets/Icons/FAQ-Outline.png"),
                MenuItems(
                    title: "Setting",
                    image: "assets/Icons/Setting-Outline.png"),
                MenuItems(
                    title: "Log Out", image: "assets/Icons/Logout-Outline.png"),
                const Padding(
                    padding: EdgeInsets.only(left: 24.0, top: 26.0),
                    child: Text(
                      "Version 1.0",
                      style: TextStyle(color: Colors.white54),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
