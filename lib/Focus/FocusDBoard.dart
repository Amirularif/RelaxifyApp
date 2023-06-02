import 'package:flutter/material.dart';

import 'FocusPlayer.dart';

class FocusDashboard extends StatefulWidget{
  const FocusDashboard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FocusDashboardState();
}

class _FocusDashboardState extends State<FocusDashboard>{
  //double border = 1.0;
  var border = [1.0,1.0,1.0,1.0];
  int count = 0;
  var timer = "0hr 15min";
  int cnt2 = 0;
  var interval = "5 min";

  var duration = [01,15];
  int itduration = 1;

  void _changeSelect(int index) {
    int flag = 0;
    for(int i = 0; i < 4; i++){
      if(border[i] == 5.0){
        flag = 1;
      }
    }

    if(border[index] == 1.0){
      if(flag == 0){
        setState((){
          border[index] = 5.0;
        });
      }else{
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Reminder'),
            content: const Text('Please select one audio only.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }
    else{//border = 5
      setState((){
        border[index] = 1.0;
      });
    }
  }

  void _changeTime(){
    switch(count%7) {
      case 0: {
        setState((){
          timer = "0hr 30 min";
          duration[0] = 01;
          duration[1] = 30;
        });
      }break;

      case 1: {
        setState((){
          timer = "0hr 45 min";
          duration[0] = 01;
          duration[1] = 45;
        });
      }break;

      case 2: {
        setState((){
          timer = "1hr 00 min";
          duration[0] = 01;
          duration[1] = 60;
        });
      }break;

      case 3: {
        setState((){
          timer = "1hr 15 min";
          duration[0] = 02;
          duration[1] = 15;
        });
      }break;

      case 4: {
        setState((){
          timer = "1hr 30 min";
          duration[0] = 02;
          duration[1] = 30;
        });
      }break;

      case 5: {
        setState((){
          timer = "1hr 45 min";
          duration[0] = 02;
          duration[1] = 45;
        });
      }break;

      case 6: {
        setState((){
          timer = "2hr 00 min";
          duration[0] = 02;
          duration[1] = 60;
        });
      }break;

      default: {
        setState((){
          timer = "1hr 45 min";
        });
      }
      break;
    }
    count++;
  }

  void _changeInterval(){
    switch(cnt2 %5) {
      case 0: {
        setState((){
          interval = "5 min";
          itduration = 5;
        });
      }break;

      case 1: {
        setState((){
          interval = "7 min";
          itduration = 7;
        });
      }break;

      case 2: {
        setState((){
          interval = "10 min";
          itduration = 10;
        });
      }break;

      case 3: {
        setState((){
          interval = "15 min";
          itduration = 15;
        });
      }break;

      case 4: {
        setState((){
          interval = "20 min";
          itduration = 20;
        });
      }break;

      default: {

      }
      break;
    }
    cnt2++;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'What would you like to do today?',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),

                    GestureDetector(
                      onTap: (){
                        _changeSelect(0);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AnimatedContainer(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFF7F9B8F),
                                  width: border[0],
                                ),
                                borderRadius: BorderRadius.circular(12),

                                image: DecorationImage(
                                  image: AssetImage("assets/music/cafe.jpeg"),
                                  fit: BoxFit.fitWidth,
                                )
                            ),
                            duration: Duration(milliseconds: 150),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Cafe',
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
                          _changeSelect(1);
                        },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AnimatedContainer(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFF7F9B8F),
                                  width: border[1],
                                ),
                                borderRadius: BorderRadius.circular(12),

                                image: DecorationImage(
                                  image: AssetImage("assets/music/forest.jpeg"),
                                  fit: BoxFit.fitWidth,
                                )
                            ),
                            duration: Duration(milliseconds: 150),
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
                          ),],
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),

                    GestureDetector(
                      onTap: (){
                        _changeSelect(2);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AnimatedContainer(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFF7F9B8F),
                                  width: border[2],
                                ),
                                borderRadius: BorderRadius.circular(12),

                                image: DecorationImage(
                                  image: AssetImage("assets/music/noise.jpeg"),
                                  fit: BoxFit.fitHeight,
                                )
                            ),
                            duration: Duration(milliseconds: 150),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'White Noise',
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
                        _changeSelect(3);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AnimatedContainer(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFF7F9B8F),
                                  width: border[3],
                                ),
                                borderRadius: BorderRadius.circular(12),

                                image: DecorationImage(
                                  image: AssetImage("assets/music/waterfall.jpg"),
                                  fit: BoxFit.fitWidth,
                                )
                            ),
                            duration: Duration(milliseconds: 150),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Waterfall',
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
                  height: 60,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),

                    GestureDetector(
                      onTap: (){
                        _changeTime();
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Duration',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                                color: Color(0xFF7F9B8F),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            padding: EdgeInsets.all(12),
                            child: Text("$timer",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),



                    GestureDetector(
                      onTap: (){
                        _changeInterval();
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Interval',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                                color: Color(0xFF7F9B8F),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            padding: EdgeInsets.all(12),
                            child: Text("$interval",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                Row(
                  children: [
                    Container(width: 31),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FocusPlayerPage(hour: duration[0],min: duration[1], itmin: itduration,)),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color(0xFF7F9B8F),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text("Start",
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

