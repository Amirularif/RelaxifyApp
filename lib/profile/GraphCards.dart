import 'package:flutter/material.dart';
import 'package:relaxify/profile/data_graph/BarGraph.dart';

class GraphCards extends StatefulWidget {
  final String maintitle;
  final String subtitle;
  final String hours1;
  final String hours2;
  final String hours3;
  final String date;
  final String time;

  final double monVal;
  final double tueVal;
  final double wedVal;
  final double thuVal;
  final double friVal;
  final double satVal;
  final double sunVal;

  const GraphCards({
    Key? key,
    required this.maintitle,
    required this.subtitle,
    required this.hours1,
    required this.hours2,
    required this.hours3,
    required this.date,
    required this.time,
    required this.monVal,
    required this.tueVal,
    required this.wedVal,
    required this.thuVal,
    required this.friVal,
    required this.satVal,
    required this.sunVal,
  }) : super(key: key);

  @override
  State<GraphCards> createState() => _GraphCardsState();
}

class _GraphCardsState extends State<GraphCards> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 330,
        height: 490,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color(0xFFACD0C1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: Color(0xFF69817A),
          ),
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main title
            Center(
              child: Text(
                widget.maintitle,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
            ),
            SizedBox(
              height: 20,
            ),

            //graph data
            Center(
              child: SizedBox(
                height: 180,
                child: BarGraph(
                  weeklySummary: [
                    widget.monVal,
                    widget.tueVal,
                    widget.wedVal,
                    widget.thuVal,
                    widget.friVal,
                    widget.satVal,
                    widget.sunVal,
                  ]
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //sub title
            Center(
              child: Text(
                widget.subtitle,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
            ),
            SizedBox(
              height: 25,
            ),

            //data
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //weekly focus hours
                        Text(
                          widget.hours1 +' Hours',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Avg. Weekly\nFocus Hours',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                          ),
                        ),
                        SizedBox(height: 20),

                        //daily focus hour
                        Text(
                          widget.hours2 +' Hours',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Avg. Daily\nFocus Hours',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 10.0),
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Day of longest focus retention
                        Text(
                          widget.date + ', ' + widget.time,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Day of Longest\nFocus Retention',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                          ),
                        ),
                        SizedBox(height: 20),

                        //best daily focus retention
                        Text(
                          widget.hours3 +' Hours',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Best Daily\nFocus Retention',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
