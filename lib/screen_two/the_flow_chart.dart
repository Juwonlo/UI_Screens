import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


List<LineChartBarData> lineChartBarData = [
  LineChartBarData(
      color: Colors.white,
      isCurved: true,
      spots: [
        FlSpot(1, 8),
        FlSpot(2, 12),
        FlSpot(3, 3),
        FlSpot(4, 11),
        FlSpot(6, 10),
        FlSpot(6.5, 1),
        FlSpot(7, 10)
      ]
  )
];



class LineChartContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Container(

        width: MediaQuery.of(context).size.width,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: LineChart(
          LineChartData(
            borderData: FlBorderData(
                border: Border.all(
                    color: Colors.white,
                    width: 2
                ),
            ),
            gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: Colors.white,
                  strokeWidth: 2,
                );
              },
              getDrawingVerticalLine: (value) {
                return FlLine(
                  color: Colors.white,
                  strokeWidth: 2,
                );
              },
              drawHorizontalLine: true,
              drawVerticalLine: true,
              horizontalInterval: 4, // Customize the interval between horizontal lines
              verticalInterval: 1, // Customize the interval between vertical lines
            ),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                showTitles: true,
              ),
              ),

              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                interval: 2,
                showTitles: true,
                // textStyle: TextStyle(
                //     color: Colors.white,
                //     fontSize: 14,
                //     fontWeight: FontWeight.bold
                // ),
              ),
            ),
            ),
            minX: 0,
            minY: 1,
            maxX: 7,
            maxY: 16,
            lineBarsData: lineChartBarData,
          ),
        ),
      ),
      ),
    );
  }
}
