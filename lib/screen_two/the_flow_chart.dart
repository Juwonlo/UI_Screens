import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:ui_screens/screen_one/constant.dart';

List<LineChartBarData> lineChartBarData = [
  LineChartBarData(color: AppColor.primaryColor, isCurved: true, spots: [
    FlSpot(1, 8),
    FlSpot(2, 9),
    FlSpot(3, 2),
    FlSpot(4, 9),
    FlSpot(6, 8),
    FlSpot(6.5, 1),
    FlSpot(7, 8)
  ])
];

class LineChartContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.width / 2.1,
        padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        //child: Expanded(
        child: Container(
          child: LineChart(
            LineChartData(
              borderData: FlBorderData(
                border: Border.all(color: Colors.white, width: 2),
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
                horizontalInterval:
                    1, // Customize the interval between horizontal lines
                verticalInterval:
                    1, // Customize the interval between vertical lines
              ),
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    interval: 1,
                    showTitles: true,
                  ),
                ),
              ),
              minX: 0,
              minY: 1,
              maxX: 7,
              maxY: 10,
              lineBarsData: lineChartBarData,
            ),
          ),
        ),
      ),
      //),
    );
  }
}
