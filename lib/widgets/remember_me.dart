import 'package:flutter/material.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: const BorderSide(color: Color.fromARGB(255, 0, 217, 255)),
          overlayColor: WidgetStateProperty.all(const Color(0XFF0DC0DE)),
          activeColor: const Color(0XFF0DC0DE),
          value: checked,
          onChanged: (checked) {
            setState(() {
              this.checked = checked!;
            });
          },
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              checked = !checked;
            });
          },
          child: const Text(
            "Remember Me",
            style: TextStyle(
              color: Color(0XFF0DC0DE),
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}
