import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/custom_category_food_body.dart';
import 'package:recipe_app/widgets/custom_category_food_title.dart';

class CategoryFood extends StatelessWidget {
  final VoidCallback onTap;
  final String foodName;

  const CategoryFood({
    required this.foodName,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const CustomCategoryFoodBody(),
          const Positioned(
            left: 16,
            top: 138,
            child: CustomCategoryFoodTitle(foodName: "Salad 2.0"),
          ),
          Positioned(
            left: 4,
            bottom: 128,
            child: CircleAvatar(
              radius: 70,
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
