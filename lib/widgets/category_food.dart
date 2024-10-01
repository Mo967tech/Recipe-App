import 'package:flutter/material.dart';

class CategoryFood extends StatelessWidget {
  final VoidCallback onTap;
  final String foodName;

  const CategoryFood({
    required this.foodName,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            child: Container(
              height: 160,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                gradient: const LinearGradient(
                  colors: [
                    Color(0XFFF99FAF),
                    Color(0XFFF8C39D),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.2, 0.8],
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.hourglass_full_outlined,
                        color: Color(0XFF655651),
                      ),
                      Text(
                        "10-20mins",
                        style: TextStyle(
                          color: Color(0XFF655651),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.group,
                        color: Color(0XFF655651),
                      ),
                      Text(
                        "4-5People",
                        style: TextStyle(
                          color: Color(0XFF655651),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        "Maria",
                        style: TextStyle(
                          color: Color(0XFF655651),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.person_2,
                        color: Color(0XFF655651),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              left: 16,
              top: 130,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 6),
                    padding: const EdgeInsets.only(left: 18),
                    decoration: BoxDecoration(
                      color: const Color(0XFF103C4A),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    alignment: Alignment.centerLeft,
                    width: 120,
                    height: 40,
                    child: Text(
                      foodName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    left: 0,
                    bottom: 10,
                    child: Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 16,
                    ),
                  ),
                ],
              )),
          Positioned(
            left: 4,
            top: -63,
            child: CircleAvatar(
              radius: 70,
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
