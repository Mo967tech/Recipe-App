import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/widgets/custom_form.dart';
import 'package:recipe_app/widgets/platform_login_widget.dart';
import 'package:recipe_app/widgets/remember_me.dart';

class SignupView extends StatefulWidget {
  static String id = "SignupView";
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 10),
            Image.asset(
              kLogo,
              width: MediaQuery.of(context).size.width / 2.5,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 25),
            const Text(
              "Continue with",
              style: TextStyle(
                color: kTextColor,
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                PlatformLoginWidget(
                  onTap: () {},
                  icon: const Icon(
                    Icons.facebook,
                    color: Color(0XFF098BF1),
                    size: 50,
                  ),
                  title: const Text(
                    "Facebook",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                PlatformLoginWidget(
                  onTap: () {},
                  icon: const Image(
                    image: AssetImage("assets/images/google.png"),
                    height: 60,
                  ),
                  title: const Text(
                    "Google",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "or",
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              "Create Your Account",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 10),
            CustomForm(formKey: formKey),
            const RememberMe(),
            const SizedBox(height: 15),
            CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {}
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(const Color(0XFF0DC0DE)),
        fixedSize: WidgetStateProperty.all(const Size(300, 50)),
      ),
      onPressed: onPressed,
      child: const Text(
        "Sign up",
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
      ),
    );
  }
}
