import 'package:flutter/material.dart';

import 'brightnes.dart';
import 'font_size.dart';
import 'font_style.dart';
import 'theme_color.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Dialog(
      backgroundColor: Colors.grey[100 + brightness],
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: SizedBox(
        width: 326.0,
        height: 528.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Center(
                child: Text(
                  "Customize your view",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
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
                child: selectFontStyle(context),
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
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade900)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Done'),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
