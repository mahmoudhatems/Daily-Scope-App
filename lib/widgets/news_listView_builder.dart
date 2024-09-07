import 'package:daily_scope/models/article_model.dart';
import 'package:daily_scope/services/news_services.dart';
import 'package:daily_scope/widgets/news_listviews.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices(dio: Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  //
   Widget build(BuildContext context) {

    return FutureBuilder(future:NewsServices(dio: Dio()).getNews() , builder: (context,sanpshot){
      return Newslistview(articles: articles);
    });


  //   return isLoading
  //       ? const SliverToBoxAdapter(
  //           child: Center(child: CircularProgressIndicator()))
  //       : Newslistview(
  //           articles: articles,
  //         );
  }
}
