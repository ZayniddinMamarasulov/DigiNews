import 'package:flutter/material.dart';

import '../../colors.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({Key? key}) : super(key: key);

  @override
  _PickerPageState createState() => _PickerPageState();
}

class Tech {
  String label;

  bool isSelected;
  Tech(this.label, this.isSelected);
}

class _PickerPageState extends State<PickerPage> {
  Color color1 = AppColors.black;
  bool selected = false;
  List<Tech> _chipsList = [
    Tech("Music", false),
    Tech("Bussines", false),
    Tech("Design", false),
    Tech("Book", false),
    Tech("Photoraphy", false),
    Tech("Architecture", false),
    Tech("Writing", false),
    Tech("Education", false),
    Tech("Entertainment", false),
    Tech("Nature", false),
    Tech("Travel", false),
    Tech("Sport", false),
    Tech("Health", false),
    Tech("Resipes", false),
    Tech("Gym & Fitness", false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                      size: 30,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    child: Text(
                      'Pick topics to start reading and saving news',
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Wrap(
                    spacing: 8,
                    direction: Axis.horizontal,
                    children: techChips(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> techChips() {
    List<Widget> chips = [];
    List chipss =[];
    for (int i = 0; i < _chipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 10, right: 5),
        child: FilterChip(
          showCheckmark: false,
          label: Text(_chipsList[i].label),
          labelStyle: TextStyle(color: _chipsList[i].isSelected?Colors.white:AppColors.black),
          backgroundColor: AppColors.white,
          selected: _chipsList[i].isSelected,
          selectedColor: AppColors.black,
          autofocus: true,
          onSelected: (bool value) {
            setState(() {
              _chipsList[i].isSelected = value;

            });
          },
        ),
      );
      chips.add(item);
      _chipsList[i].isSelected? chipss.add(_chipsList[i].label):null;
    }
    print(chipss);
    return chips;
  }
}
