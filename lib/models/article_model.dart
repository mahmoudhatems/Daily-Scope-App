class ArticleModel {
  final String? image;
  final String title;
  final String description;
  final String? subTitle; // Optional subTitle
  final Source source;

  ArticleModel({
    required this.image,
    required this.title,
    required this.description,
    required this.source,
    this.subTitle, // SubTitle can be optional
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json["urlToImage"] ?? '', // Provide a default image if null
      title: json["title"] ?? 'No Title', // Default title if null
      description: json["description"] ?? 'No Description', // Default description
      source: Source.fromJson(json["source"]),
      subTitle: json["subTitle"], // Assuming subTitle exists in the API, otherwise it's null
    );
  }
}

class Source {
  final String id;
  final String name;

  Source({
    required this.id,
    required this.name,
  });

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json['id'] ?? 'unknown', // Default id if null
      name: json['name'] ?? 'Unknown', // Default name if null
    );
  }
}
