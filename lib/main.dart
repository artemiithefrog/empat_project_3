import 'package:empat_project_3/page/dash_board_page.dart';
import 'package:flutter/material.dart';
import 'colors/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        scaffoldBackgroundColor: dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: dark,
        ),
        appBarTheme: const AppBarTheme(
            elevation: 0,
            color: dark,
            iconTheme: IconThemeData(color: primary)),
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
              color: white,
            ),
            titleLarge: TextStyle(fontWeight: FontWeight.w600)),
      ),
      home: const DashboardPage(),
    );
  }
}
