import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final dynamic bgColor;
  final IconData iconData;

  const CategoryIcon(
      {super.key, required this.bgColor, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
        child: Icon(
          iconData,
          size: 30,
          color: Colors.white,
        ));
  }
}
