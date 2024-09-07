import 'package:daily_scope/models/article_model.dart';
import 'package:daily_scope/services/news_services.dart';
import 'package:daily_scope/widgets/news_tile.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Newslistview extends StatelessWidget {
 
 final  List<ArticleModel> articles ;

  Newslistview({ required this.articles , super.key});


  @override
  Widget build(BuildContext context) {
    NewsServices(dio: Dio()).getNews(category: 'general');

    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 22.0, bottom: 22),
          child: NewsTile(
            articleModel: articles[index],
          ),
        );
      },
    ));
  }
}
