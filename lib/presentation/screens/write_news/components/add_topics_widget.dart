import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:news_app/domain/entities/my_topic.dart';

class AddTopicsWidget extends StatefulWidget {
  @override
  State<AddTopicsWidget> createState() => _AddTopicsWidgetState();
}

class _AddTopicsWidgetState extends State<AddTopicsWidget> {
  final List<MyTopic> _itemsMyTopic = MyTopic.topics;
  List<DropdownMenuItem<MyTopic>> _dropdownMenuItems = [];
  List<MyTopic> selectedTopics = [];

  @override
  void initState() {
    _dropdownMenuItems = buildDropDownMenuItems(_itemsMyTopic);
  }

  List<DropdownMenuItem<MyTopic>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<MyTopic>> items = [];
    for (MyTopic listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.title),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'topic',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ).tr(),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade50,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                selectedTopics.isEmpty
                    ? Text('addTopic'.tr(),
                        style: TextStyle(color: Colors.grey.shade400))
                    : Expanded(
                        child: Wrap(
                          children:
                              List.generate(selectedTopics.length, (index) {
                            return InputChip(
                              backgroundColor: Colors.grey.shade200,
                              label: Text(selectedTopics[index].title),
                              deleteIcon: Icon(
                                Icons.cancel_outlined,
                                color: Colors.grey.shade400,
                              ),
                              onDeleted: () {
                                setState(() {
                                  selectedTopics.removeAt(index);
                                });
                              },
                            );
                          }),
                        ),
                      ),
                DropdownButton<MyTopic>(
                    elevation: 0,
                    underline: Container(),
                    items: _dropdownMenuItems,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        selectedTopics.add(value!);
                      });
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
