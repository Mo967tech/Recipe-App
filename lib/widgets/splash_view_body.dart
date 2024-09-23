import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0XFFF99FAF),
            Color(0XFFF8C39D),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          Image.asset(
            kLogo,
            width: MediaQuery.of(context).size.width / 1.2,
          ),
          const SizedBox(height: 20),
          const Text(
            "Cook it Eat it",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: kTextColor,
              fontFamily: "Poppins",
            ),
          ),
          const Spacer(flex: 3),
          const CircularProgressIndicator(color: Color(0XFFFF3250)),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
