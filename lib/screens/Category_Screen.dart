
import 'package:daily_scope/widgets/news_listView_builder.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(slivers: [
          NewsListViewBuilder(category: category,),
        ],),
      )
    );
  }
}