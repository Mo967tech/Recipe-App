import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const CustomForm({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: const Column(
        children: [
          CustomTextFormField(
            hintText: "Enter your Email ID",
            customFieldName: "Email",
          ),
          SizedBox(height: 10),
          CustomTextFormField(
            hintText: "Enter a Password",
            customFieldName: "Password",
          ),
        ],
      ),
    );
  }
}
