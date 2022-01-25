import 'package:flutter/material.dart';

import 'brightnes.dart';
import 'font_size.dart';
import 'hero_animation.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900 - brightness],
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
                builder: (context) => const HeroPage(),
              );
            },
            icon: Icon(Icons.title)),
      ),
      body: Text(
        "nimadir",
        style: TextStyle(fontSize: 2 * count),
      ),
    );
  }
}
