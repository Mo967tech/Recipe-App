import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0XFF103C4A),
        fontSize: 26,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
