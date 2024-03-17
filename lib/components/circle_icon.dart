import 'package:flutter/material.dart';
import 'package:empat_project_3/colors/colors.dart';
import 'package:empat_project_3/utils/constant.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final Color bgColor;

  const CircleIcon({super.key, required this.icon, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding / 3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: black, width: 1),
        color: bgColor,
      ),
      child: Icon(
        icon,
        size: 20,
        color: white,
      ),
    );
  }
}
