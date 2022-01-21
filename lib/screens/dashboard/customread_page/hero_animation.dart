import 'package:flutter/material.dart';
import 'package:news_app/screens/dashboard/customread_page/brightnes.dart';
import 'package:news_app/screens/dashboard/customread_page/font_size.dart';
import 'package:news_app/screens/dashboard/customread_page/font_style.dart';
import 'package:news_app/screens/dashboard/customread_page/theme_color.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900 - brightness],
      body: SizedBox(
        child: Hero(
          transitionOnUserGestures: false,
          tag: Image.asset("assets/dashboard/Okk.png"),
          child: Material(
              color: Colors.grey[900 - brightness],
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    width: 326.0,
                    height: 528.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 24.0, horizontal: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Center(
                            child: Text(
                              "Customize your view",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w700),
                            ),
                          ),
                          const Divider(
                            thickness: 1.0,
                            height: 26.0,
                          ),
                          Text(
                            "Font Style",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            width: double.infinity,
                            height: 40.0,
                            child: selectLang(context),
                          ),
                          Text(
                            "Font Size",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            width: double.infinity,
                            height: 40.0,
                            child: const FontSize(),
                          ),
                          Text(
                            "Brightness",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            width: double.infinity,
                            height: 40.0,
                            child: BrightnesPage(),
                          ),
                          Text(
                            "Theme color",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            width: double.infinity,
                            height: 56.0,
                            child: const ThemeColor(),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          SizedBox(
                              height: 48.0,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12))),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.grey.shade900)),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Done'),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
