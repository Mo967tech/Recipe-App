import 'package:flutter/material.dart';

class CustomSearchWidget extends StatelessWidget {
  final void Function() onTap;
  const CustomSearchWidget({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: const Icon(
              Icons.search,
              size: 55,
              color: Color(0XFFE9465D),
            ),
          ),
          hintText: "What's cooking in your mind...?",
          hintStyle: const TextStyle(
            color: Color(0XFFA6A4A1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
