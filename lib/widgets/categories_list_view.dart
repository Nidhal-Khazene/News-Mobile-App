import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: "assets/images/business.jpg",
      categoryName: "business",
    ),
    CategoryModel(
      image: "assets/images/entertainment.jpg",
      categoryName: "entertainment",
    ),
    CategoryModel(image: "assets/images/general.jpg", categoryName: "general"),
    CategoryModel(image: "assets/images/health.jpg", categoryName: "health"),
    CategoryModel(image: "assets/images/science.jpg", categoryName: "science"),
    CategoryModel(image: "assets/images/sports.jpg", categoryName: "sports"),
    CategoryModel(
      image: "assets/images/Technology.jpg",
      categoryName: "Technology",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
