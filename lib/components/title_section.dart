import 'package:flutter/material.dart';
import 'package:empat_project_3/utils/constant.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final TextStyle style;
  final Widget? trailing;

  const TitleSection({
    super.key,
    required this.title,
    this.trailing,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: style),
          trailing ?? const SizedBox(),
        ],
      ),
    );
  }
}
