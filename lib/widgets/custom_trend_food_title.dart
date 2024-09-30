import 'package:flutter/material.dart';

class CustomTrendFoodTitle extends StatelessWidget {
  final String title;
  const CustomTrendFoodTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 6),
      padding: const EdgeInsets.only(left: 18),
      decoration: const BoxDecoration(
        color: Color(0XFF103C4A),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      alignment: Alignment.bottomLeft,
      width: 200,
      height: 30,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
