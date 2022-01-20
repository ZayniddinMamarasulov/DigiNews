import 'package:easy_localization/src/public_ext.dart';
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
      childDecoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      ),
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
                    children: [
                      CircleAvatar(
                        maxRadius: 36,
                        backgroundColor: Colors.white,
                        backgroundImage:
                            AssetImage("assets/images/avatar_sample.png"),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Tiana Vetrovs",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        "viewProfile",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.colorE8,
                          fontWeight: FontWeight.w400,
                        ),
                      ).tr()
                    ],
                  ),
                ),
                _buildListTile(
                  'home'.tr(),
                  Icons.home,
                  () => Navigator.of(context)
                      .pushNamed(MainNavigationRouteNames.home),
                ),
                _buildListTile('savedNews'.tr(), Icons.bookmark, () {
                  Navigator.of(context)
                      .pushNamed(MainNavigationRouteNames.savedNews);
                }),
                _buildListTile(
                  'writeNews'.tr(),
                  Icons.edit,
                  () => Navigator.of(context)
                      .pushNamed(MainNavigationRouteNames.writeNews),
                ),
                _buildListTile('membership'.tr(), Icons.credit_card, () {}),
                _buildListTile('help'.tr(), Icons.help, () {}),
                _buildListTile('setting'.tr(), Icons.settings, () {}),
                _buildListTile('logout'.tr(), Icons.logout, () {}),
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
