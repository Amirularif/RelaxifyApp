import 'package:flutter/material.dart';
import 'package:relaxify/MeditationInfoPage.dart';
import 'package:relaxify/MusicPlayerPage.dart';
import 'Emoticons.dart';

class MeditationListPage extends StatefulWidget {
  const MeditationListPage({Key? key}) : super(key: key);

  @override
  State<MeditationListPage> createState() => _MeditationListPageState();
}

class _MeditationListPageState extends State<MeditationListPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
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
                        color: Colors.black87,
                        fontSize: 24,
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
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Sound 1',
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
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Sound 2',
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
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Sound 3',
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
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Sound 4',
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
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Sound 5',
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
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Sound 6',
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
        )
    );
  }
}

