import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/widgets/custom_app_bar.dart';
import 'package:recipe_app/widgets/custom_search_widget.dart';

class FoodView extends StatelessWidget {
  static String id = "FoodView";
  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          const SizedBox(height: 30),
          const CustomAppBar(),
          const SizedBox(height: 10),
          CustomSearchWidget(onTap: () {}),
        ],
      ),
    );
  }
}
