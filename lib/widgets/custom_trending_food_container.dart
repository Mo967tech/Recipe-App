import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/custom_trend_food_title.dart';

class CustomTrendingFoodContainer extends StatelessWidget {
  const CustomTrendingFoodContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      alignment: Alignment.bottomCenter,
      width: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/italian_pizza.jfif"),
          fit: BoxFit.fill,
        ),
      ),
      child: const Stack(
        children: [
          CustomTrendFoodTitle(title: "Italian Pizza"),
          Positioned(
            top: 8,
            left: -2,
            bottom: 16,
            child: Icon(
              Icons.circle,
              color: Colors.green,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
