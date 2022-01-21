import 'package:easy_localization/src/public_ext.dart';

class MyTopic {
  String title;
  bool isSelected;

  @override
  String toString() {
    return 'MyTopic{title: $title, isSelected: $isSelected}';
  }

  MyTopic(this.title, {this.isSelected = false});

  static List<MyTopic> topics = [
    MyTopic('music'.tr()),
    MyTopic('business'.tr()),
    MyTopic('design'.tr()),
    MyTopic('book'.tr()),
    MyTopic('photography'.tr()),
    MyTopic('architecture'.tr()),
    MyTopic('writing'.tr()),
    MyTopic('education'.tr()),
    MyTopic('enternaiment'.tr()),
    MyTopic('nature'.tr()),
    MyTopic('travel'.tr()),
    MyTopic('sport'.tr()),
    MyTopic('health'.tr()),
    MyTopic('recipes'.tr()),
    MyTopic('fitness'.tr()),
  ];
}
