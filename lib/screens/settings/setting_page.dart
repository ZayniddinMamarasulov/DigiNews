import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/main.dart';
import 'package:news_app/services/PreferenceService.dart';
import 'package:news_app/utils/app_colors.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _darkMode = false;
  late PreferenceService service;

  @override
  void initState() {
    super.initState();
    service = PreferenceService();
    themeMode();
  }

  void themeMode() async {
    _darkMode = await service.getThemeMode();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 32),
              Expanded(
                child: ListView(
                  children: [
                    setting("Membership", "Free plan", iconArrow(), () {}),
                    setting("Notification", " ", iconArrow(), () {}),
                    setting("Language", "English", iconArrow(), () {}),
                    setting("Change password", "", iconArrow(), () {}),
                    setting("Dark mode", "", darkSwitch(), () {}),
                    setting("Community", "", iconArrow(), () {}),
                    setting("FAQ & Help", "", iconArrow(), () {}),
                    setting("About", "", iconArrow(), () {}),
                    setting("Logout", "", const SizedBox.shrink(), () {})
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget setting(
      String title, String value, Widget widget, void Function() func) {
    return InkWell(
      onTap: func,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                Row(children: [
                  Text(value,
                      style: TextStyle(
                        color: AppColors.blackw300,
                      )),
                  const SizedBox(width: 12),
                  widget,
                ]),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: AppColors.colorE8,
          )
        ],
      ),
    );
  }

  Widget iconArrow() {
    return Icon(Icons.arrow_forward_ios, color: AppColors.blackw300);
  }

  Widget darkSwitch() {
    return CupertinoSwitch(
      value: _darkMode,
      onChanged: (bool val) {
        setState(() {
          _darkMode = val;
          service.setThemeMode(_darkMode);
          StreamControllerHelper.setTheme.add(_darkMode);
        });
      },
    );
  }
}
