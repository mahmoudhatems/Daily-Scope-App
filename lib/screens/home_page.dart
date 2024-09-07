import 'package:daily_scope/constants.dart';
import 'package:daily_scope/models/article_model.dart';
import 'package:daily_scope/services/news_services.dart';
import 'package:daily_scope/widgets/Categories_listview.dart';
import 'package:daily_scope/widgets/news_listView_builder.dart';
import 'package:daily_scope/widgets/news_listviews.dart';
import 'package:daily_scope/widgets/news_tile.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Daily",
                style: TextStyle(color: maincolor),
              ),
              Text(
                " Scope",
                style: TextStyle(color: secoandcolor),
              ),
            ],
          ),
        ),
        body:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
             NewsListViewBuilder()
            ],
          ),
          // child: Column(

          //   children: [
          //     Categories_ListView(),
          //     SizedBox(height: 30,),

          //    Expanded(child: news_listview())
          //   ],
          // ),
        ));
  }
}
