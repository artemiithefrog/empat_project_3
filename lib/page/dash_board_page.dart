import 'package:flutter/material.dart';
import 'package:empat_project_3/colors/colors.dart';
import 'home/home_view.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const Text('Notifications',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    const Text('Explore',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    const Text('Profile',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Opacity(
        opacity: 0.75,
        child: Container(
          height: 100.0,
          decoration: const BoxDecoration(
            color: bottomNavBarColor,
            boxShadow: [
              BoxShadow(
                color: Colors.transparent,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildBottomNavigationBarItem(Icons.home_filled, 'Home', 0),
              _buildBottomNavigationBarItem(
                  Icons.notifications, 'Notifications', 1),
              _buildBottomNavigationBarItem(Icons.explore, 'Explore', 2),
              _buildBottomNavigationBarItem(Icons.person, 'Profile', 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBarItem(
      IconData iconData, String label, int index) {
    return GestureDetector(
      onTap: () {
        _onItemTapped(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData,
              color: _selectedIndex == index ? Colors.blue : Colors.grey,
              size: 24),
          Text(
            label,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
