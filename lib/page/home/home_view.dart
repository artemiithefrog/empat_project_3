import 'package:empat_project_3/colors/colors.dart';
import 'package:empat_project_3/components/button_list_tile.dart';
import 'package:empat_project_3/components/favourites_rectangle.dart';
import 'package:empat_project_3/components/recent_rectangle.dart';
import 'package:empat_project_3/components/shortcuts_rectangle.dart';
import 'package:empat_project_3/components/title_section.dart';
import 'package:empat_project_3/components/custom_searchbar.dart';
import 'package:empat_project_3/dummy_data/home_view_json.dart';
import 'package:empat_project_3/utils/constant.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: getAppBar(),
      body: getBody(size),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: topNavBarColor,
      centerTitle: true,
      title: const Text(
        'Home',
        style: TextStyle(fontWeight: FontWeight.w500, color: white),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add, size: 30),
        ),
      ],
    );
  }

  Widget getBody(Size size) {
    return Container(
      color: black,
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          const SizedBox(height: 10),
          const TitleSection(title: 'Home', style: bigTitle),
          const SizedBox(height: 20),
          CustomSearchBar(),
          const SizedBox(height: 20),
          const TitleSection(
            title: 'My Work',
            trailing: Icon(
              Icons.more_horiz,
              color: grey,
            ),
            style: normalTitle,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding), // Adjust padding as needed
            child: Container(
              decoration: BoxDecoration(
                color: rectangleColor,
                borderRadius: BorderRadius.circular(
                    10.0), // Adjust the corner radius as needed
              ),
              child: Column(
                children: List.generate(myWorks.length, (index) {
                  return ButtonListTile(
                    onTap: () {},
                    title: myWorks[index]['title'],
                    icon: Icons.more_horiz,
                    bgIconColor: myWorks[index]['bgIconColor'],
                  );
                }),
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          const TitleSection(
            title: 'Favourites',
            trailing: Icon(
              Icons.more_horiz,
              color: grey,
            ),
            style: normalTitle,
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          const FavouritesRectangle(),
          const SizedBox(
            height: defaultPadding * 2,
          ),
          const TitleSection(
            title: 'Shortcuts',
            trailing: Icon(
              Icons.more_horiz,
              color: grey,
            ),
            style: normalTitle,
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          ShortcutsRectangle(size: size),
          const SizedBox(
            height: defaultPadding * 2,
          ),
          const TitleSection(
            title: 'Recent',
            style: normalTitle,
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          const RecentRectangle(),
          const SizedBox(
            height: defaultPadding * 2,
          ),
        ],
      ),
    );
  }
}
