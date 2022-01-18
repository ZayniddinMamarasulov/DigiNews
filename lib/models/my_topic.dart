class MyTopic {
  String title;
  bool isSelected;

  @override
  String toString() {
    return 'MyTopic{title: $title, isSelected: $isSelected}';
  }

  MyTopic(this.title, {this.isSelected = false});

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
