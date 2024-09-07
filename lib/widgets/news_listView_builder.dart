import 'package:daily_scope/models/article_model.dart';
import 'package:daily_scope/services/news_services.dart';
import 'package:daily_scope/widgets/news_listviews.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    future = NewsServices(dio: Dio()).getNews(category: 'general');
    super.initState();
  }

  @override
  //
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, sanpshot) {
          if (sanpshot.hasData) {
            return Newslistview(articles: sanpshot.data!);
          } else if (sanpshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                  child: ErrorMessage(
                errorMessage: "There was an error , try latter",
              )),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });

    //   return isLoading
    //       ? const SliverToBoxAdapter(
    //           child: Center(child: CircularProgressIndicator()))
    //       : Newslistview(
    //           articles: articles,
    //         );
  }
}

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
    required this.errorMessage,
  });
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: TextStyle(color: Colors.black),
    );
  }
}
