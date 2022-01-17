import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';
import 'package:news_app/utils/colors.dart';
import 'package:news_app/screens/register_and_login/login_page/components/app_bar.dart';

class PickTopicsPage extends StatefulWidget {
  PickTopicsPage({Key? key}) : super(key: key);

  @override
  _PickTopicsPageState createState() => _PickTopicsPageState();
}

class _PickTopicsPageState extends State<PickTopicsPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> topics = [
      getChip(AppColors.topics[0], 0),
      getChip(AppColors.topics[1], 1),
      getChip(AppColors.topics[2], 2),
      getChip(AppColors.topics[3], 3),
      getChip(AppColors.topics[4], 4),
      getChip(AppColors.topics[5], 5),
      getChip(AppColors.topics[6], 6),
      getChip(AppColors.topics[7], 7),
      getChip(AppColors.topics[8], 8),
      getChip(AppColors.topics[9], 9),
      getChip(AppColors.topics[10], 10),
      getChip(AppColors.topics[11], 11),
      getChip(AppColors.topics[12], 12),
      getChip(AppColors.topics[13], 13),
      getChip(AppColors.topics[14], 14),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const Text(
                  'Pick topics to start reading and saving news',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 24),
                Wrap(
                  runAlignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 12,
                  runSpacing: 12,
                  children: topics,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(MainNavigationRouteNames.home);
                  },
                  child: const Text('Next'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getChip(MyTopic topic, int count) {
    bool isSelected = topic.isSelected;
    return ChoiceChip(
      backgroundColor: Colors.grey[100],
      label: Text(
        topic.title,
      ),
      selectedColor: Colors.black,
      labelStyle: TextStyle(color: isSelected ? Colors.white : Colors.black),
      selected: isSelected,
      onSelected: (bool value) {
        setState(() {
          isSelected = !isSelected;
          AppColors.topics[count].isSelected = isSelected;
        });
      },
    );
  }
}
