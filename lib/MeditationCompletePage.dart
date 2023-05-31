import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:relaxify/MusicPlayerPage.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'Dashboard.dart';

class MeditationCompletePage extends StatefulWidget {
  const MeditationCompletePage({Key? key}) : super(key: key);

  @override
  _MeditationCompletePageState createState() => _MeditationCompletePageState();
}

class _MeditationCompletePageState extends State<MeditationCompletePage> {
  bool _isPlaying = false;
  double _currentProgress = 0.0;
  String _setTimerValue = '';
  AudioPlayer _audioPlayer = AudioPlayer();


  @override
  void dispose() {
    super.dispose();
    _audioPlayer.release();
    _audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final List<ChartData> chartData = [
      ChartData(01, 100),
      ChartData(02, 98),
      ChartData(03, 97),
      ChartData(04, 94),
      ChartData(05, 92),
      ChartData(06, 93),
      ChartData(07, 90),
      ChartData(08, 89),
      ChartData(09, 87),
      ChartData(10, 85),
      ChartData(11, 82),
      ChartData(12, 81),
      ChartData(13, 79),
      ChartData(14, 80),
      ChartData(15, 77),
      ChartData(16, 75),
      ChartData(17, 73),
      ChartData(18, 72),
      ChartData(19, 70),
      ChartData(20, 69),
      ChartData(21, 67),
      ChartData(22, 69),
      ChartData(23, 67),
      ChartData(24, 68),
      ChartData(25, 70),
      ChartData(26, 71),
      ChartData(27, 73),
      ChartData(28, 74),
      ChartData(29, 75),
      ChartData(30, 72),
      ChartData(31, 71),
      ChartData(32, 69),
      ChartData(33, 73),
      ChartData(34, 72),
      ChartData(35, 71),
      ChartData(36, 70),
      ChartData(37, 73),
      ChartData(38, 75),
      ChartData(39, 72),
      ChartData(40, 71),
      ChartData(41, 70),
      ChartData(42, 71),
      ChartData(43, 69),
      ChartData(44, 68),
      ChartData(45, 72),

    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Meditation Complete',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 15),

              Container(
                margin: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Duration',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.fromLTRB(0,5,5,5),
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '00:45:30',
                    style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Daily and weekly goals',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width:350,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 20,
                            child: CircularPercentIndicator(
                              radius: 40.0,
                              lineWidth: 7.0,
                              animation: true,
                              percent: 0.8,
                              center: new Text(
                                "Goal",
                                style:
                                new TextStyle(color: Colors.grey.shade900,fontWeight: FontWeight.bold, fontSize: 15.0),
                              ),
                              linearGradient: LinearGradient(
                                begin: Alignment.topRight,end:Alignment.bottomLeft,
                                colors: <Color> [Colors.grey.shade800,Colors.greenAccent],
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              rotateLinearGradient: true,
                            ),
                        ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: CircularPercentIndicator(
                              radius: 50.0,
                              lineWidth: 7.0,
                              animation: true,
                              percent: 0.5,
                              linearGradient: LinearGradient(
                                begin: Alignment.topRight,end:Alignment.bottomLeft,
                                colors: <Color> [Colors.grey.shade800,Colors.blueAccent],
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              rotateLinearGradient: true,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 2,
                            width: 200, // Half the width of the grey container
                            height: 120,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100, // Customize the color as desired
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Badges',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 35,height: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade100, // Customize the color as desired
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                        child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/badges/rank.png'),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        width: 35,height: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade100, // Customize the color as desired
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                        child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/badges/star.png'),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width:5),
                                      Container(
                                        width: 35,height: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade100, // Customize the color as desired
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                        child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/badges/badge.png'),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Informatrix',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 12,height: 12,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Colors.greenAccent.shade400, // Customize the color as desired
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                      ),
                                      SizedBox(width: 5),

                                      Text(
                                        'Daily goal',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Container(
                                        width: 12,height: 12,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Colors.blueAccent.shade400, // Customize the color as desired
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                      ),
                                      SizedBox(width: 5),

                                      Text(
                                        'Weekly goal',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ), // Add child widgets inside the new container
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Meditation Analysis',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 350,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Container(
                      width: 330,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SfCartesianChart(
                        primaryXAxis:CategoryAxis(
                          plotBands: <PlotBand>[
                          PlotBand(
                            text: 'During meditation',
                            verticalTextPadding:'15%',
                              textAngle: 0,
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                              isVisible: true,
                              start: 3,
                              end: 45,
                            associatedAxisStart: 8,
                            associatedAxisEnd: 140,
                        ),],),
                          series: <ChartSeries>[
                            // Renders line chart
                            SplineSeries<ChartData, int>(
                                dataSource: chartData,
                                splineType: SplineType.cardinal,
                                cardinalSplineTension: 0.9,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y,
                              color: Colors.red.shade700
                            )
                          ]
                      )
                  )
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MusicPlayerPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade800,
                      ),
                      child: Text('Restart'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Dashboard()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade800,
                      ),
                      child: Text('Home'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _startTimer() {
    // Implement your timer logic here
  }

  void _playSong() async {
  }
}
class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double y;
}
