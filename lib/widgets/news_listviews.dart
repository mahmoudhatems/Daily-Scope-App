import 'package:daily_scope/widgets/news_tile.dart';
import 'package:flutter/material.dart';

class news_listview extends StatelessWidget {
  const news_listview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: 10,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 22.0,bottom: 22),
          child: const NewsTile(),
        );
      },
    ));
  }
}
