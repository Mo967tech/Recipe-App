import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnName;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.btnName,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(const Color(0XFF0DC0DE)),
        fixedSize: WidgetStateProperty.all(const Size(300, 50)),
      ),
      onPressed: onPressed,
      child: Text(
        btnName,
        style: const TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
      ),
    );
  }
}
