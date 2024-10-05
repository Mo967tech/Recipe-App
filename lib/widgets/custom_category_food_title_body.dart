import 'package:flutter/material.dart';

class CustomCategoryFoodTitleBody extends StatelessWidget {
  final String foodName;
  const CustomCategoryFoodTitleBody({required this.foodName, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            margin: const EdgeInsets.only(left: 6),
            padding: const EdgeInsets.only(left: 18),
            decoration: BoxDecoration(
              color: const Color(0XFF103C4A),
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width / 3.25,
            height: 40,
            child: Text(
              foodName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
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

/**
 *  
 */
/**
 * Container(
      margin: const EdgeInsets.only(left: 6),
      padding: const EdgeInsets.only(left: 18),
      decoration: BoxDecoration(
        color: const Color(0XFF103C4A),
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      width: 120,
      height: 40,
      child: Text(
        foodName,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
 */