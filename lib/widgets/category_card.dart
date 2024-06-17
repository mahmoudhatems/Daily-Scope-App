import 'package:daily_scope/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.category});

  final CategoryModel category;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: AssetImage(category.imageAssestUrl),fit: BoxFit.cover)
          ),
          height:100 ,
          width: 160,
          child: Center(
            child: Text(category.categoryName,style: TextStyle(
              color:Colors.white,fontSize: 22,fontWeight: FontWeight.bold
            
            ),),
          ) ,
        ),
    );
  }
}