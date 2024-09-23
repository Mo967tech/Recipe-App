import 'dart:async';
import 'package:flutter/material.dart';
import 'package:recipe_app/views/signup_view.dart';
import 'package:recipe_app/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  static String id = "SplashView";
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, SignupView.id),
    );
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
