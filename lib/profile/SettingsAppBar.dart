import 'package:flutter/material.dart';

class SettingsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackButtonPressed;

  SettingsAppBar({
    required this.title,
    required this.onBackButtonPressed,
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
        ),),
      title: Text(
        'Settings',
        style: TextStyle(
          fontSize: 22.0,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
