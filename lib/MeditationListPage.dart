import 'package:flutter/material.dart';
import 'package:relaxify/MeditationInfoPage.dart';
import 'package:relaxify/MusicPlayerPage.dart';
import 'package:relaxify/profile/CustomAppBar.dart';
import 'Emoticons.dart';
import 'SettingsPage.dart';

class MeditationListPage extends StatefulWidget {
  const MeditationListPage({Key? key}) : super(key: key);

  @override
  State<MeditationListPage> createState() => _MeditationListPageState();
}

class _MeditationListPageState extends State<MeditationListPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Meditation',
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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    SizedBox(
                      height: 8,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'What would you like \n'
                            'to do today?',
                        style: TextStyle(
                          color: Color(0xFF7F9B8F),
                          fontSize: 24,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),

                  SizedBox(
                    height: 25,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MeditationInfoPage()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/musicwallpaper/piano.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              padding: EdgeInsets.all(12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Classical',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 60,
                      ),

                      GestureDetector(
                        onTap: (){
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/musicwallpaper/city.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              padding: EdgeInsets.all(12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'City',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),

                      GestureDetector(
                        onTap: (){
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/musicwallpaper/forest.jfif'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              padding: EdgeInsets.all(12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Forest',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 60,
                      ),

                      GestureDetector(
                        onTap: (){
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/musicwallpaper/musicposter1.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              padding: EdgeInsets.all(12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Nature',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),

                      GestureDetector(
                        onTap: (){
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/musicwallpaper/tide.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              padding: EdgeInsets.all(12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Tide',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 60,
                      ),

                      GestureDetector(
                        onTap: (){
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/musicwallpaper/universe.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              padding: EdgeInsets.all(12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Universe',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}

