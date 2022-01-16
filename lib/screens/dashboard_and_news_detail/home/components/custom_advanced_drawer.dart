import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:news_app/main_navigation.dart';
import 'package:news_app/utils/app_colors.dart';

class CustomAdvancedDrawer extends StatefulWidget {
  final Widget child;
  final AdvancedDrawerController advancedDrawerController;

  const CustomAdvancedDrawer(
      {Key? key, required this.child, required this.advancedDrawerController})
      : super(key: key);

  @override
  _CustomAdvancedDrawerState createState() => _CustomAdvancedDrawerState();
}

class _CustomAdvancedDrawerState extends State<CustomAdvancedDrawer> {
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      animationCurve: Curves.easeInOut,
      backdropColor: Colors.black,
      animateChildDecoration: false,
      animationDuration: const Duration(milliseconds: 300),
      controller: widget.advancedDrawerController,
      childDecoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
      child: widget.child,
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
                _buildListTile(
                  'Home',
                  Icons.home,
                  () => Navigator.of(context)
                      .pushNamed(MainNavigationRouteNames.home),
                ),
                _buildListTile('Saved News', Icons.bookmark, () {}),
                _buildListTile(
                  'Write news',
                  Icons.edit,
                  () => Navigator.of(context)
                      .pushNamed(MainNavigationRouteNames.writeNews),
                ),
                _buildListTile('Membership', Icons.credit_card, () {}),
                _buildListTile('Help', Icons.help, () {}),
                _buildListTile('Setting', Icons.settings, () {}),
                _buildListTile('Log out', Icons.logout, () {}),
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

  ListTile _buildListTile(String title, IconData icon, void Function() func) {
    return ListTile(
      onTap: func,
      leading: Icon(icon),
      title: Text(title),
    );
  }
}
//125
//105
