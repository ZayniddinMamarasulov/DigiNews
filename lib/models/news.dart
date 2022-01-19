class News {
  String category;
  String image;
  String title;
  int readingTime;
  bool isSaved;

  News(
      {required this.category,
      required this.image,
      required this.title,
      required this.readingTime,
      required this.isSaved});

  factory News.fromJson(Map<dynamic, dynamic> parsedJson) {
    return News(
      category: parsedJson['category'] ?? "",
      image: parsedJson['image'] ?? "",
      title: parsedJson['title'] ?? "",
      readingTime: parsedJson['readingTime'] ?? "",
      isSaved: parsedJson['isSaved'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": category,
      "age": image,
      "title": title,
      "readingTime": readingTime,
      "isSaved": isSaved,
    };
  }

  @override
  String toString() {
    return "$title";
  }
}
