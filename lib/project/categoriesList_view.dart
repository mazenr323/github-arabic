import 'package:flutter/material.dart';
import '../models/categoty_model.dart';
import 'catogrycards.dart';
class CategoriesListView extends StatelessWidget {
   CategoriesListView({
    Key? key,
  }) : super(key: key);
List<CategoryModel> categories= [
  CategoryModel(image: 'assets/images/busniess.jpeg', categoryName: 'busniess'),
  CategoryModel(image: 'assets/images/shop.jpeg', categoryName: 'shop'),
  CategoryModel(image: 'assets/images/work.jpg', categoryName: 'work'),
  CategoryModel(image: 'assets/images/games.jpeg', categoryName: 'games'),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return categoryCard(
              category: categories[index],
            );
          }),

      //      child: ListView.builder(
      //           scrollDirection: Axis.horizontal,
      //           itemCount: categories.length,
      //           itemBuilder: (context, index) {
      //             return categoryCard(
      //               category: categories[index],
      //             );
      //           }),
    );
  }
}