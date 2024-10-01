import 'package:flutter/material.dart';

class CustomTrendFoodTitle extends StatelessWidget {
  final String title;
  final double width, height;
  const CustomTrendFoodTitle({
    super.key,
    required this.title,
    required this.height,
    required this.width,
  });

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
      width: width,
      height: height,
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
