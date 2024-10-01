import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/category_container.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  int choosedCategoryIndex = 0;
  final List<String> categoryNames = [
    "Healthy",
    "Quick",
    "Cuisine",
    "Breakfast",
    "Snack",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryContainer(
          categoryName: categoryNames[index],
          choosed: choosedCategoryIndex == index,
          onTap: () => setState(() => choosedCategoryIndex = index),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: 5,
      ),
    );
  }
}
