import 'package:daily_scope/constants.dart';
import 'package:daily_scope/models/article_model.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                articleModel.image ??  ,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              )),
          Text(
           articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, color:maincolor,fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8,),
            Text(
            articleModel.description??'',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, color:maincolorlight,),
          ),
        ],
      ),
    );
  }
}
