import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/widgets/custom_button.dart';
import 'package:recipe_app/widgets/custom_form.dart';
import 'package:recipe_app/widgets/platform_login_widget.dart';
import 'package:recipe_app/widgets/remember_me.dart';

class LoginView extends StatefulWidget {
  static String id = "LoginView";

  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              Image.asset(
                kLogo,
                width: MediaQuery.of(context).size.width / 2.5,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 33),
              const Text(
                "Continue with",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 30,
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
                "Register To Your Account",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              CustomForm(
                formKey: formKey,
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: RememberMe(),
              ),
              const SizedBox(height: 10),
              CustomButton(
                btnName: "Login",
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade900,
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
