import 'package:daily_scope/models/article_model.dart';
import 'package:daily_scope/services/news_services.dart';
import 'package:daily_scope/widgets/news_tile.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Newslistview extends StatefulWidget {
  const Newslistview({
    super.key,
  });

  @override
  State<Newslistview> createState() => _NewslistviewState();
}

class _NewslistviewState extends State<Newslistview> {
 List <ArticleModel>articles=[];
@override
  void initState()async {
   super.initState();
  
  articles =await NewsServices(dio: Dio()).getNews();

 
  }

  @override
  Widget build(BuildContext context) {
    NewsServices(dio: Dio()).getNews();

    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return  Padding(
          padding:  const EdgeInsets.only(top: 22.0,bottom: 22),
          child:  NewsTile(articleModel: articles[index],),
        );
      },
    ));
  }
}
