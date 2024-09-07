import 'package:daily_scope/constants.dart';
import 'package:daily_scope/widgets/Categories_listview.dart';
import 'package:daily_scope/widgets/news_listView_builder.dart';
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
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Daily",
                  style: TextStyle(color: maincolor,fontWeight: FontWeight.bold), 
                ),
              ),
               Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: Text(
                   "Scope",
                   style: TextStyle(color: secoandcolor,fontWeight: FontWeight.bold), 
                 ),
               ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              NewsListViewBuilder(
                category: 'general',
              )
            ],
          ),
        ));
  }
}
