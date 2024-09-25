import 'package:flutter/material.dart';

class CustomFieldName extends StatelessWidget {
  final String customFieldName;
  const CustomFieldName({required this.customFieldName, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 5),
        Text(
          customFieldName,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Icon(
            Icons.star,
            color: Colors.red,
            size: 15,
          ),
        ),
      ],
    );
  }
}
