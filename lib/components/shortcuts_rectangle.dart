import 'package:empat_project_3/dummy_data/home_view_json.dart';
import 'package:flutter/material.dart';
import 'package:empat_project_3/utils/constant.dart';
import 'package:empat_project_3/colors/colors.dart';
import 'package:empat_project_3/components/button_border.dart';
import 'package:empat_project_3/components/circle_icon.dart';

class ShortcutsRectangle extends StatelessWidget {
  final Size size;

  const ShortcutsRectangle({
    super.key,
    required this.size,
  });

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
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: List.generate(shortcuts.length, (index) {
                        return Positioned(
                          left: index * (size.width / shortcuts.length) -
                              (size.width / 2.3),
                          right: 0,
                          child: CircleIcon(
                              icon: shortcuts[index]['icon'],
                              bgColor: shortcuts[index]['bgColor']),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "The things you need, one tap away",
                    textAlign: TextAlign.center,
                    style: titleStyle.copyWith(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Fast access you lists of Issues, Pull Requests, or Discussions",
                    textAlign: TextAlign.center,
                    style: titleStyle.copyWith(
                        color: grey,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ButtonBorder(text: 'Get Started', onTap: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
