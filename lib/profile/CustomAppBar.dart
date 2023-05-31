import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackButtonPressed;
  final VoidCallback onSettingsButtonPressed;

  CustomAppBar({
    required this.title,
    required this.onBackButtonPressed,
    required this.onSettingsButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.shade800,
      centerTitle: true,
      leading: GestureDetector(
        onTap: onBackButtonPressed,
        child: Icon(Icons.arrow_back),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: onSettingsButtonPressed,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
