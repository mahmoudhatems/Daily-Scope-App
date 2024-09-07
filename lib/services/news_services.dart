import 'package:dio/dio.dart';
import 'package:daily_scope/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      // Make the GET request
      var response = await dio.get(
        "https://newsapi.org/v2/top-headlines",
        queryParameters: {
          'country': 'us',
          'apiKey': '8739d2128ad74ac18056c9c64275d2da',
          'category': category,
        },
      );

      // Parse the response data
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];

      // Convert each article to an ArticleModel
      List<ArticleModel> articleList = articles
          .map((article) => ArticleModel.fromJson(article))
          .where((article) => article.image != null && article.image!.isNotEmpty) // Filter articles with images
          .toList();

      return articleList;
    } catch (e) {
      // Log or handle the error appropriately
      print("Error fetching news: $e");
      return []; // Return an empty list on error
    }
  }
}
