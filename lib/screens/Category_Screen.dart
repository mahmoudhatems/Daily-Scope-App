import 'package:daily_scope/widgets/news_listView_builder.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(slivers: [
        NewsListViewBuilder(),
      ],)
    );
  }
}