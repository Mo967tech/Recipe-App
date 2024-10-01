import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/widgets/category_food.dart';
import 'package:recipe_app/widgets/category_list_view.dart';
import 'package:recipe_app/widgets/custom_app_bar.dart';
import 'package:recipe_app/widgets/custom_search_widget.dart';
import 'package:recipe_app/widgets/custom_text.dart';
import 'package:recipe_app/widgets/custom_trending_food_list_widget.dart';

class FoodView extends StatelessWidget {
  static String id = "FoodView";
  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          const CustomAppBar(),
          const SizedBox(height: 10),
          CustomSearchWidget(onTap: () {}),
          const SizedBox(height: 20),
          const CustomText(text: "Trending Today"),
          const SizedBox(height: 20),
          const CustomTrendingFoodListWidget(),
          const SizedBox(height: 20),
          const CustomText(text: "Categories"),
          const SizedBox(height: 20),
          const CategoryListView(),
          const SizedBox(height: 80),
          CategoryFood(onTap: () {}, foodName: 'Salad 2.0'),
        ],
      ),
    );
  }
}
