import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Dashboard.dart';
import '../MeditationInfoPage.dart';
import 'FocusDBoard.dart';
import 'FocusLog.dart';

class FocusResultPage extends StatefulWidget {
  const FocusResultPage({Key? key}) : super(key: key);

  @override
  State<FocusResultPage> createState() => _FocusResultPageState();
}

class _FocusResultPageState extends State<FocusResultPage> {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*
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
                */

                SizedBox(
                  height: 15,
                ),

                Text(
                  'Focus Mode',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 50),
                ),
                Text(
                  'Completed',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 50),
                ),

                SizedBox(
                  height: 25,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),

                    Container(
                        width: 320,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black,
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Focus Rate',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '78%',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]

                        )
                    ),

                    SizedBox(height: 10),

                    Container(
                        width: 320,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black,
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rest:Focus Ratio',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '3 : 2',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]

                        )
                    ),
                  ],
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text(
                          'Daily',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Progress',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),

                        SizedBox(height: 20),

                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 9.0,
                          animation: true,
                          percent: 0.8,
                          center: new Text(
                            "80.0%",
                            style:
                            new TextStyle(color: Colors.grey.shade900,fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          linearGradient: LinearGradient(
                            begin: Alignment.topRight,end:Alignment.bottomLeft,
                            colors: <Color> [Colors.grey.shade900,Colors.grey.shade900],
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          rotateLinearGradient: true,
                        ),


                      ],
                    ),

                    SizedBox(
                      width: 60,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Weekly',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Progress',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),

                        SizedBox(height: 20),

                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 9.0,
                          animation: true,
                          percent: 0.64,
                          center: new Text(
                            "64.0%",
                            style:
                            new TextStyle(color: Colors.grey.shade900,fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          linearGradient: LinearGradient(
                            begin: Alignment.topRight,end:Alignment.bottomLeft,
                            colors: <Color> [Colors.grey.shade900,Colors.grey.shade900],
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          rotateLinearGradient: true,
                        ),


                      ],
                    ),
                  ],
                ),

                SizedBox(height: 50),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => focusLogPage()),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 310,
                    decoration: BoxDecoration(
                        color: Color(0xFF7F9B8F),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    padding: EdgeInsets.all(12),
                    child: Text("Show Past Log",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(height: 16),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FocusDashboard()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Color(0xFF7F9B8F),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text("Restart",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white),
                        ),
                      ),
                    ),

                    SizedBox(width: 50),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Dashboard()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Color(0xFF7F9B8F),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text("Home",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white),
                        ),
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
