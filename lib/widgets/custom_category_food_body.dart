import 'package:flutter/material.dart';

class CustomCategoryFoodBody extends StatelessWidget {
  const CustomCategoryFoodBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 175,
        width: 145,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: const LinearGradient(
            colors: [
              Color(0XFFF99FAF),
              Color(0XFFF8C39D),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8],
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.hourglass_full_outlined,
                  color: Color(0XFF655651),
                ),
                Text(
                  "10-20mins",
                  style: TextStyle(
                    color: Color(0XFF655651),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(
                  Icons.group,
                  color: Color(0XFF655651),
                ),
                Text(
                  "4-5People",
                  style: TextStyle(
                    color: Color(0XFF655651),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Spacer(),
                Text(
                  "Maria",
                  style: TextStyle(
                    color: Color(0XFF655651),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  Icons.person_2,
                  color: Color(0XFF655651),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
