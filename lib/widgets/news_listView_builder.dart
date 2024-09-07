import 'package:daily_scope/models/article_model.dart';
import 'package:daily_scope/services/news_services.dart';
import 'package:daily_scope/widgets/news_listviews.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;

  const NewsListViewBuilder({super.key, required this.category});
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;

  @override
  void initState() {
    future = NewsServices(dio: Dio()).getNews(category: widget.category);
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
      style:const TextStyle(color: Colors.black),
    );
  }
}
