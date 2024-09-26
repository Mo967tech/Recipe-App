import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/custom_text_form_field.dart';

class CustomForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  const CustomForm({
    super.key,
    required this.formKey,
  });

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          const SizedBox(
            child: CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: "Enter your Email ID",
              customFieldName: "Email",
            ),
          ),
          const SizedBox(height: 10),
          CustomTextFormField(
            obsureText: visible,
            icon: Visibility(
              replacement: IconButton(
                onPressed: () {
                  setState(() {
                    visible = true;
                  });
                },
                icon: const Icon(
                  Icons.visibility_sharp,
                  size: 35,
                ),
                color: const Color(0XFF262A2F),
              ),
              visible: visible,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    visible = false;
                  });
                },
                icon: const Icon(
                  Icons.visibility_off_sharp,
                  size: 35,
                ),
                color: const Color(0XFF262A2F),
              ),
            ),
            textInputType: TextInputType.visiblePassword,
            hintText: "Enter a Password",
            customFieldName: "Password",
          ),
        ],
      ),
    );
  }
}
