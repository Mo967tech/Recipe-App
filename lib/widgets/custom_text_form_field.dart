import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/custom_field_name.dart';

class CustomTextFormField extends StatelessWidget {
  final Icon? icon;
  final String hintText, customFieldName;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.customFieldName,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomFieldName(customFieldName: customFieldName),
        Card(
          child: TextFormField(
            validator: (value) {
              if (value == null ? true : value.isEmpty) {
                return "Field Is Required";
              }
              return null;
            },
            decoration: InputDecoration(
              prefixIcon: icon,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey.shade500),
              enabledBorder: buildBorder(10),
              focusedBorder: buildBorder(10),
              errorBorder: buildBorder(10),
              focusedErrorBorder: buildBorder(30),
              border: buildBorder(10),
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder(double radius) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: const BorderSide(color: Colors.white),
      );
}
