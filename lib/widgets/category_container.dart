import 'package:flutter/material.dart';

class CategoryContainer extends StatefulWidget {
  final String categoryName;
  final bool choosed;
  final VoidCallback onTap;

  const CategoryContainer({
    required this.categoryName,
    required this.choosed,
    required this.onTap,
    super.key,
  });

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  @override
  Widget build(BuildContext context) {
    return widget.choosed
        ? GestureDetector(
            onTap: widget.onTap,
            child: Container(
              height: 60,
              width: 80,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0XFFEC6176)),
                borderRadius: BorderRadius.circular(25),
                shape: BoxShape.rectangle,
                gradient: const LinearGradient(
                  colors: [Color(0XFFEC6176), Color(0XFFEB8197)],
                  stops: [0.6, 0.4],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Text(
                maxLines: 1,
                widget.categoryName,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
          )
        : GestureDetector(
            onTap: widget.onTap,
            child: Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0XFFEC6176), width: 2),
                borderRadius: BorderRadius.circular(25),
                shape: BoxShape.rectangle,
              ),
              child: Text(
                maxLines: 1,
                widget.categoryName,
                style: const TextStyle(
                  color: Color(0XFFEC6176),
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
            ),
          );
  }
}
