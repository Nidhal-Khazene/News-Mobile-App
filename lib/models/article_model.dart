class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;
  const ArticleModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
  factory ArticleModel.forJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
    );
  }
}
