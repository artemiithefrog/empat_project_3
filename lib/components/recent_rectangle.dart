import 'package:flutter/material.dart';
import 'package:empat_project_3/utils/constant.dart';
import 'package:empat_project_3/colors/colors.dart';

class RecentRectangle extends StatelessWidget {
  const RecentRectangle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Center(
        child: Container(
            decoration: BoxDecoration(
                color: rectangleColor, borderRadius: BorderRadius.circular(15)),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    'Issues and Pull Requests that you\'ve interacted with recently will appear here.',
                    style: TextStyle(
                        color: white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center),
              ),
            )),
      ),
    );
  }
}
