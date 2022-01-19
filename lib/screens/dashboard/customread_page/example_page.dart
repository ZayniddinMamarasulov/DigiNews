import 'package:flutter/material.dart';
import 'package:news_app/screens/dashboard/customread_page/hero_animation.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "data",
        ),
        leading: IconButton(
            onPressed: () {
              showDialog(
                barrierDismissible: true,
                useRootNavigator: true,
                context: context,
                builder: (context) => HeroPage(),
              );
            },
            icon: Icon(Icons.title)),
      ),
    );
  }
}
