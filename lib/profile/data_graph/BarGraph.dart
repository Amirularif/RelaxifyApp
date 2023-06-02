import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:relaxify/profile/data_graph/BarData.dart';

class BarGraph extends StatelessWidget {
  final List weeklySummary;
  const BarGraph({Key? key, required this.weeklySummary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
        monAmount: weeklySummary[0],
        tueAmount: weeklySummary[1],
        wedAmount: weeklySummary[2],
        thuAmount: weeklySummary[3],
        friAmount: weeklySummary[4],
        satAmount: weeklySummary[5],
        sunAmount: weeklySummary[6]
    );
    myBarData.initializeBarData();

    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: getBottomTitles
            ),
          ),
        ),
        barGroups: myBarData.barData.map((data) => BarChartGroupData(
            x: data.x,
            barRods: [BarChartRodData(
                toY: data.y,
                color: Color(0xFF69817A),
                width: 25,
                borderRadius: BorderRadius.circular(4),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: 100,
                  color: Colors.grey.shade200,
                )
              ),
            ],
          )
        ).toList(),
      ),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta){
  const style = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
      fontSize: 14,
  );

  Widget text;

  switch(value.toInt()){
    case 0:
      text = const Text('M', style: style);
      break;
    case 1:
      text = const Text('T', style: style);
      break;
    case 2:
      text = const Text('W', style: style);
      break;
    case 3:
      text = const Text('T', style: style);
      break;
    case 4:
      text = const Text('F', style: style);
      break;
    case 5:
      text = const Text('S', style: style);
      break;
    case 6:
      text = const Text('S', style: style);
      break;
    default:
      text = const Text('', style: style);
      break;
  }
  
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}
