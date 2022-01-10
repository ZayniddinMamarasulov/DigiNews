import 'package:flutter/material.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  _PopularPageState createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.all(24.0),
        width: double.infinity,
        height: 320,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/popular_banner.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                "Here's What You\nNeed To Know About\nDumplings",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: [
              Container(
                height: 60,
                color: Colors.red,
                margin: const EdgeInsets.all(4.0),
              ),
              Container(
                height: 60,
                color: Colors.red,
                margin: const EdgeInsets.all(4.0),
              ),
              Container(
                height: 60,
                color: Colors.red,
                margin: const EdgeInsets.all(4.0),
              ),
              Container(
                height: 60,
                color: Colors.red,
                margin: const EdgeInsets.all(4.0),
              ),
              Container(
                height: 60,
                color: Colors.red,
                margin: const EdgeInsets.all(4.0),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
