import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/widgets/platform_login_widget.dart';

class SignupView extends StatelessWidget {
  static String id = "SignupView";
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 8.5),
            Image.asset(
              kLogo,
              width: MediaQuery.of(context).size.width / 2,
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
            const SizedBox(height: 15),
            Text(
              "or",
              style: TextStyle(
                fontSize: 35,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              "Create Your Account",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
