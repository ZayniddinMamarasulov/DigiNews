class News {
  //String category;
  // String image;
  // String title;
  // int readingTime;
  // bool isSaved;
  //
  // News(
  //     {required this.category,
  //     required this.image,
  //     required this.title,
  //     required this.readingTime,
  //     required this.isSaved});

  String title;
  String? content;
  String? hour;
  String? date;
  String? imageUrl;
  int? watchCount;
  String image;
  int readingTime;
  bool isSaved;
  String category;

  News({required this.title,
    this.content,
    this.hour,
     this.date,
    this.imageUrl,
    this.watchCount,
    required this.image,
    required this.category,
    required this.isSaved,
    required this.readingTime});


}