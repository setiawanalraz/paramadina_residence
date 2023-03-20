import 'package:flutter/material.dart';

import 'my_bottom_nav_bar.dart';

class MyWillPopScope extends StatefulWidget {
  const MyWillPopScope({super.key});

  @override
  State<MyWillPopScope> createState() => _MyWillPopScopeState();
}

class _MyWillPopScopeState extends State<MyWillPopScope> {
  DateTime? _currentBackPressTime;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        DateTime now = DateTime.now();

        if (_currentBackPressTime == null ||
            now.difference(_currentBackPressTime!) >
                const Duration(seconds: 2)) {
          _currentBackPressTime = now;

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.teal,
              showCloseIcon: true,
              content: Text('Tekan kembali lagi untuk keluar'),
            ),
          );

          return false;
        }
        return true;
      },
      child: const MyBottomNavBar(),
    );
  }
}
