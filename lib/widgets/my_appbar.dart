import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleAppBar;
  const MyAppBar({
    Key? key,
    required this.titleAppBar,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titleAppBar,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationIcon: Image.asset(
                  "assets/images/app_logo.png",
                  width: 50,
                  height: 50,
                ),
                applicationName: "Paramadina Residence",
                applicationVersion: "1.0.0",
                applicationLegalese:
                    "The Paramadians, living the most beautiful life",
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
    );
  }
}
