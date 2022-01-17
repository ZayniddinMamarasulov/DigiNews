import 'dart:ui';

class AppColors {
  static const Color appBlack = Color(0xFF121212);
  static const Color unSelectedTabColor = Color(0xFFB8B8B8);
  static const Color carouselButtonColor = Color(0xFF1212121);
  static const Color colorE8 = Color(0xFFE8E8E8);


  //TODO : MOVE LIST BELOW to another file

  static List<MyTopic> topics = [
    MyTopic('🎶 Music'),
    MyTopic('💼 Business'),
    MyTopic('🎨 Design'),
    MyTopic('📖 Book'),
    MyTopic('📷 Photography'),
    MyTopic('🏛 Architecture'),
    MyTopic('✍🏻 Writing'),
    MyTopic('‍🏫 Education'),
    MyTopic('🎮 Entertainment'),
    MyTopic('🍃 Nature'),
    MyTopic('🏝 Travel'),
    MyTopic('🏓 Sports'),
    MyTopic('⚕️ Health'),
    MyTopic('🍳 Recipes'),
    MyTopic('💪 Gym & Fitness'),
  ];
}

class MyTopic {
  String title;
  bool isSelected;

  MyTopic(this.title, {this.isSelected = false});
}
