import 'package:daily_scope/models/article_model.dart';
import 'package:dio/dio.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});

 Future<List<ArticleModel>>  getNews()  async{
    var response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=8739d2128ad74ac18056c9c64275d2da&category=general");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];

    List<ArticleModel> articleList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article["urlToImage"],
          title: article["title"],
          description: article["description"],
          subTitle: '',
          source: Source(id:article['source'] ['id'], name: "name"));
    }
    return articleList;
  }
}
