import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/register_and_login/login_page/components/app_bar.dart';

class PickTopicsPage extends StatefulWidget {
  const PickTopicsPage({Key? key}) : super(key: key);

  @override
  _PickTopicsPageState createState() => _PickTopicsPageState();
}

class _PickTopicsPageState extends State<PickTopicsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: const Center(
        child: Text(
          'Welcome',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
