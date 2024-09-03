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

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    NewsServices(dio: Dio()).getNews();

    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: 10,
      (context, index) {
        return const Padding(
          padding:  EdgeInsets.only(top: 22.0,bottom: 22),
          child:  NewsTile(),
        );
      },
    ));
  }
}
