import 'package:flutter/material.dart';
import 'package:news_app/utils/colors.dart';

class PickTopicsPage extends StatefulWidget {
   PickTopicsPage({Key? key}) : super(key: key);

  bool isSelected =false;

  @override
  _PickTopicsPageState createState() => _PickTopicsPageState();
}

class _PickTopicsPageState extends State<PickTopicsPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> topics = [
      getChip(AppColors.topics[0],0),
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
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body:ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(36),
              child: Column(
                children:  [
                  const Text(
                    'Pick topics to start reading and saving news',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 24),
                  Wrap(
                    runAlignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: 12,
                    runSpacing: 12,
                    children: topics,
                  ),
                  SizedBox(height: 36,),
                  Container(
                    height: 56,
                    width: 327,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: FlatButton(
                      onPressed: (){},
                      child: const Center(
                        child: Text("Get Started",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 16),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
  Widget getChip(MyTopic topic, int count) {
    bool isSelected = topic.isSelected;
    return ChoiceChip(
      backgroundColor: Colors.grey[230],
      label: Text(topic.title,),
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