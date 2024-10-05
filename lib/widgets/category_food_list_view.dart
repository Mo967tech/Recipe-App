import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/category_food.dart';

class CategoryFoodListView extends StatelessWidget {
  const CategoryFoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 187,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryFood(
          onTap: () {},
          foodName: 'Salad 2.0',
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: 7,
      ),
    );
  }
}
