import 'package:flutter/material.dart';

class PlatformLoginWidget extends StatelessWidget {
  final Widget icon;
  final Text title;
  final VoidCallback onTap;
  
  const PlatformLoginWidget({
    super.key,
    required this.icon,
    required this.title, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        child: ListTile(
          onTap: onTap,
          contentPadding: EdgeInsets.zero,
          leading: icon,
          title: title,
        ),
      ),
    );
  }
}
