import 'package:daily_scope/models/category_model.dart';
import 'package:daily_scope/widgets/category_card.dart';
import 'package:flutter/material.dart';
class Categories_ListView extends StatelessWidget {
  const Categories_ListView({
    super.key,
  });
final List<CategoryModel>categories=const [
CategoryModel(imageAssestUrl: "assets/images/Technology.jpg", categoryName: "Technology"),
CategoryModel(imageAssestUrl: "assets/images/science.jpg", categoryName: "Science"),
CategoryModel(imageAssestUrl: "assets/images/sports.jpg", categoryName: "Sports"),
CategoryModel(imageAssestUrl: "assets/images/business.jpeg", categoryName: "Business"),
CategoryModel(imageAssestUrl: "assets/images/health.avif", categoryName: "Health"),
CategoryModel(imageAssestUrl: "assets/images/entertaiment.jpg", categoryName: "Entertaiment"),
CategoryModel(imageAssestUrl: "assets/images/general.avif", categoryName: "General"),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return  CategoryCard(category: categories[index],);
       
        },
      ),
    );
  }
}

