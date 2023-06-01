import 'package:flutter/material.dart';
import 'package:relaxify/profile/SettingsAppBar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade100,
        appBar: SettingsAppBar(
          title: 'Relaxify',
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),

        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),

                    //settings title
                    Center(
                      child: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 50,
                    ),

                    Divider(
                      color: Colors.grey.shade600,
                      height: 35,
                      thickness: 0.2,
                    ),

                    //edit profile
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 20,
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade600,
                      height: 35,
                      thickness: 0.2,
                    ),

                    //User Settings
                    Text(
                      'User Settings',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 20,
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade600,
                      height: 35,
                      thickness: 0.2,
                    ),

                    //Smart Watch Data Settings
                    Text(
                      'Smart Watch Data Settings',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 20,
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade600,
                      height: 35,
                      thickness: 0.2,
                    ),

                    //App Settings
                    Text(
                      'App Settings',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 20,
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade600,
                      height: 35,
                      thickness: 0.2,
                    ),

                    //Log Out
                    Text(
                      'Log Out',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade600,
                      height: 35,
                      thickness: 0.2,
                    ),

                    SizedBox(
                      height: 60,
                    ),

                    //Delete Account
                    Center(
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            'Delete Account',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
