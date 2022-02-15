import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:news_app/domain/entities/my_topic.dart';
import 'package:news_app/main_navigation.dart';
import 'package:news_app/presentation/screens/dashboard_and_news_detail/saved_page/app_bar.dart';
import 'package:news_app/utils/static_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PickTopicsPage extends StatefulWidget {
  const PickTopicsPage({Key? key}) : super(key: key);

  @override
  _PickTopicsPageState createState() => _PickTopicsPageState();
}

class _PickTopicsPageState extends State<PickTopicsPage> {
  List<MyTopic> topics = MyTopic.topics;

  List<MyTopic> selectTopics = [];

  void _saveLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(StaticData.IS_LOG_IN, true);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.01, bottom: height * 0.05),
                child: const Text(
                  'topicsPageText',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ).tr(),
              ),
              Wrap(
                runSpacing: 12,
                spacing: 16,
                children: List.generate(topics.length, (index) {
                  var topic = topics[index];
                  return ChoiceChip(
                    label: Text(
                      topic.title,
                      style: TextStyle(
                          color:
                              topic.isSelected ? Colors.white : Colors.black),
                    ),
                    selectedColor: Colors.grey.shade900,
                    selected: topic.isSelected,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    pressElevation: 0,
                    onSelected: (bool newValue) {
                      setState(() {
                        topic.isSelected = !topic.isSelected;
                        if (topic.isSelected) {
                          selectTopics.add(topic);
                        } else {
                          selectTopics.remove(topic);
                        }

                        // tanlanganlar
                        print(selectTopics);
                      });
                    },
                  );
                }),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.08),
                height: 56,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    _saveLogin();
                    Navigator.of(context)
                        .pushNamed(MainNavigationRouteNames.home);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey.shade900),
                  ),
                  child: const Text(
                    'getStarted',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ).tr(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
