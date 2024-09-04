import 'package:daily_scope/models/article_model.dart';
import 'package:dio/dio.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});

  Future<List<ArticleModel>> getNews() async {
    var response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=8739d2128ad74ac18056c9c64275d2da&category=general");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];

    List<ArticleModel> articleList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article["urlToImage"] ?? '', // Provide a default value if null
        title: article["title"] ?? 'No Title', // Provide a default title if null
        description: article["description"] ?? 'No Description', // Provide a default description if null
        subTitle: '',
        source: Source(
          id: article['source']['id'] ?? 'unknown', // Provide a default id if null
          name: article['source']['name'] ?? 'Unknown', // Provide a default name if null
        ),
      );
      articleList.add(articleModel); // Don't forget to add the article to the list
    }
    return articleList;
  }
}
