import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';
import 'package:news_app/ui/utils/app_bar.dart';
import 'package:news_app/ui/utils/chip_model.dart';

class PickTopicsPage extends StatefulWidget {
  const PickTopicsPage({Key? key}) : super(key: key);

  @override
  _PickTopicsPageState createState() => _PickTopicsPageState();
}

class _PickTopicsPageState extends State<PickTopicsPage> {
  List<String>? selectedCountList = [];
  List<User>? selectedUserList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: FilterListWidget<User>(
          listData: userList,
          resetButtonText: "Reset",
          allButtonText: "Select all",
          borderRadius: 10,
          buttonSpacing: 15,
          width: double.infinity,
          applyButtonText: "Apply",
          selectedItemsText: "Selected Items",
          selectedTextBackgroundColor: Colors.red,
          controlContainerDecoration: const BoxDecoration(),
          applyButtonTextStyle:
              const TextStyle(color: Colors.red, fontSize: 20),
          hideCloseIcon: true,
          applyButonTextBackgroundColor: Colors.white,
          controlButtonTextStyle:
              const TextStyle(color: Colors.black, fontSize: 20),
          selectedListData: selectedUserList,
          hideHeaderText: true,
          onApplyButtonClick: (list) {
            /*Navigator.pop(context, list);*/
            debugPrint("Apply button clicked !!!");
            debugPrint("$selectedUserList");
            debugPrint("$selectedCountList");
          },
          choiceChipLabel: (item) {
            return item!.name;
          },
          choiceChipBuilder: (context, item, isSelected) {
            return Container(
              width: 140,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: isSelected! ? Colors.black45 : Colors.white,
                  border: Border.all(
                    color: isSelected ? Colors.blue[300]! : Colors.grey[300]!,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    item.avatar,
                    style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black),
                  ),
                  Text(
                    item.name,
                    style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black),
                  ),
                ],
              ),
            );
          },
          validateSelectedItem: (list, val) {
            return list!.contains(val);
          },
          onItemSearch: (list, text) {
            if (list!.any((element) =>
                element.name!.toLowerCase().contains(text.toLowerCase()))) {
              return list
                  .where((element) =>
                      element.name!.toLowerCase().contains(text.toLowerCase()))
                  .toList();
            }
            return [];
          },
        ));
  }
}
