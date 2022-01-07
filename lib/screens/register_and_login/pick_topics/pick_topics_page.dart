import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/my_topic.dart';
import 'package:news_app/screens/register_and_login/login_page/components/app_bar.dart';

class PickTopicsPage extends StatefulWidget {
  const PickTopicsPage({Key? key}) : super(key: key);

  @override
  _PickTopicsPageState createState() => _PickTopicsPageState();
}

class _PickTopicsPageState extends State<PickTopicsPage> {
  List<MyTopic> topics = MyTopic.topics;

  List<MyTopic> selectTopics = [];

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
                  'Pick topics to start reading and saving news',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
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
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade900),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
