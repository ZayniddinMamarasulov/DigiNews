class ArticleEntity {
  SourceEntity source;
  String title;
  String? description;
  String publishedAt;
  String url;
  String? urlToImage;
  bool isSaved;

  final String defaultImageLink = '';

  ArticleEntity({
    required this.source,
    required this.title,
    required this.description,
    required this.publishedAt,
    required this.url,
    required this.urlToImage,
    this.isSaved = false,
  });

  factory ArticleEntity.fromJson(Map<String, dynamic> map) {
    return ArticleEntity(
      description: map['description'],
      publishedAt: map['publishedAt'],
      source: SourceEntity.fromJson(map['source']),
      title: map['title'],
      url: map['url'],
      urlToImage: map['urlToImage'],
    );
  }
}

class SourceEntity {
  String name;

  SourceEntity({required this.name});

  factory SourceEntity.fromJson(Map<String, dynamic> map) {
    return SourceEntity(
      name: map['name'],
    );
  }
}
