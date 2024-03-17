import 'package:flutter/material.dart';
import 'package:empat_project_3/utils/constant.dart';
import 'package:empat_project_3/colors/colors.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: defaultPadding / 2, right: defaultPadding),
      child: SizedBox(
        height: 40,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
            prefixIcon: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                  child:
                      Icon(Icons.search, color: searchBarTextColor, size: 30),
                ), // Magnifying glass icon// Spacing between icon and text
                Text(
                  'Search GitHub',
                  style: TextStyle(
                      color: searchBarTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ), // Text beside magnifying glass
              ],
            ),
          ),
        ),
      ),
    );
  }
}
