import 'package:flutter/material.dart';
import 'package:empat_project_3/colors/colors.dart';

class ButtonBorder extends StatelessWidget {
  final String text;
  final Color? bgColor;
  final VoidCallback onTap;

  const ButtonBorder({
    super.key,
    required this.text,
    this.bgColor = bgButton,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonBorderColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0), // Set the radius here
          ),
        ),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold, color: primary),
        ),
      ),
    );
  }
}
