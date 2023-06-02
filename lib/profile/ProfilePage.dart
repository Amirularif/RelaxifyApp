import 'package:flutter/material.dart';
import 'package:relaxify/SettingsPage.dart';
import 'package:relaxify/profile/CustomAppBar.dart';
import 'package:relaxify/profile/ViewMoreData.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar(
        title: 'User Profile',
        onBackButtonPressed: () {
          Navigator.pop(context);
        },
        onSettingsButtonPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingsPage()), // Navigate to the SettingsPage
          );
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'User Name',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'User info and data summary',
                        style: TextStyle(
                          color: Color(0xFF69817A),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 35,
              ),

              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current Mood',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/emoticons/happy.png',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 25),

                        //heart rate
                        Text(
                          '120 bpm',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Avg. Heart Rate',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                          ),
                        ),
                        SizedBox(height: 20),

                        //steps
                        Text(
                          '4530',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Steps Taken',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                        ),
                        ),
                        SizedBox(height: 20),

                        //sleep hours
                        Text(
                          '7 Hours',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Sleep Hours',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                          ),
                        ),
                        SizedBox(height: 20),

                        //view more data
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ViewMoreData()),
                            );
                          },
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color(0xFF69817A),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Center(
                              child: Text(
                                'View More Data',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  //persona avatar
                  Expanded(
                    flex: 1,
                    child:
                        Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          'assets/persona/persona3.png',
                          width: 300,
                          height: 400,
                          //fit: BoxFit.fill,
                        ),
                      ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
