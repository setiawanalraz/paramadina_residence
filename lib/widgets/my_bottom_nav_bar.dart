import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int index = 0;
  final screens = [
    const HomePage(),
    const Center(),
    const Center(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.lightGreen,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        child: NavigationBar(
          height: 70,
          backgroundColor: Colors.green,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          animationDuration: const Duration(seconds: 3),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.dashboard_outlined,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.dashboard,
                color: Colors.white,
              ),
              label: "Beranda",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Tipe Rumah",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.map_outlined,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.map,
                color: Colors.white,
              ),
              label: "Lokasi",
            ),
          ],
        ),
      ),
    );
  }
}
