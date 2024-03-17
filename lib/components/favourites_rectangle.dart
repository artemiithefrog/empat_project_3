// Padding(
//             padding: const EdgeInsets.all(defaultPadding),
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: defaultPadding,
//                 ),
//                 Text(
//                   "Add favorite respositories for quick access at any time, without having to search",
//                   textAlign: TextAlign.center,
// style: titleStyle.copyWith(
//     color: Colors.grey,
//     fontWeight: FontWeight.w500,
//     height: 1.5),
// ),
// const SizedBox(
//   height: defaultPadding,
// ),
// ButtonBorder(
//   onTap: () {},
//   text: "Add Favorite",
// ),
//               ],
//             ),
//           ),

import 'package:empat_project_3/components/button_border.dart';
import 'package:flutter/material.dart';
import 'package:empat_project_3/utils/constant.dart';
import 'package:empat_project_3/colors/colors.dart';

class FavouritesRectangle extends StatelessWidget {
  const FavouritesRectangle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Center(
        child: Container(
            decoration: BoxDecoration(
                color: rectangleColor, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      'Add favorite respositories for quick access at any time, without having to search',
                      textAlign: TextAlign.center,
                      style: titleStyle.copyWith(
                          color: white,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          fontSize: 15),
                    ),
                    ButtonBorder(
                      onTap: () {},
                      text: "Add Favorite",
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
