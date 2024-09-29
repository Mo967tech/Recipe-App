import 'package:flutter/material.dart';
import 'package:recipe_app/views/food_view.dart';
import 'package:recipe_app/views/login_view.dart';
import 'package:recipe_app/views/signup_view.dart';
import 'package:recipe_app/views/splash_view.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashView.id: (context) => const SplashView(),
        SignupView.id: (context) => const SignupView(),
        LoginView.id: (context) => const LoginView(),
        FoodView.id: (context) => const FoodView(),
      },
      // initialRoute: SplashView.id,
      initialRoute: FoodView.id,
    );
  }
}
