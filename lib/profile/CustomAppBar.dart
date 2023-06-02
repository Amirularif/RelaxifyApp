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
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 2,
      leading: GestureDetector(
        onTap: onBackButtonPressed,
        child: Icon(Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 22.0,
          ///fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: onSettingsButtonPressed,
          color: Colors.black,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
