import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/custom_trending_food_container.dart';

class CustomTrendingFoodListWidget extends StatelessWidget {
  const CustomTrendingFoodListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            const CustomTrendingFoodContainer(foodName: "Italian Pizza"),
        itemCount: 5,
        separatorBuilder: (context, index) => const SizedBox(width: 20),
      ),
    );
  }
}
