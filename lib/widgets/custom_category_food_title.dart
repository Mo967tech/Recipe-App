import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/custom_category_food_title_body.dart';

class CustomCategoryFoodTitle extends StatelessWidget {
  final String foodName;
  const CustomCategoryFoodTitle({required this.foodName, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomCategoryFoodTitleBody(foodName: foodName),
        const Positioned(
          top: 10,
          left: 0,
          bottom: 10,
          child: Icon(
            Icons.circle,
            color: Colors.green,
            size: 16,
          ),
        ),
      ],
    );
  }
}
