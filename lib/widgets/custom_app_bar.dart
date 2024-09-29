import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Hungry? Choose a dish...",
          style: TextStyle(
            fontSize: 25,
            color: Color(0XFFE9465D),
            fontWeight: FontWeight.w900,
          ),
        ),
        Image.asset(
          "assets/images/download-removebg-preview.png",
          height: 60,
        ),
      ],
    );
  }
}
