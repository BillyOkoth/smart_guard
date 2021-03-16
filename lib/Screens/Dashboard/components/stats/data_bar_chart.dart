import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:smart_guard/constants.dart';

class DataBarChart extends StatelessWidget {
  final List<double> covidCases;

  const DataBarChart({@required this.covidCases});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Visitors  Per Month',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 14.0,
                barTouchData: BarTouchData(enabled: false),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    margin: 2.0,
                    showTitles: true,
                    // textStyle: buttonTextStyle,
                    rotateAngle: 35.0,
                    getTitles: (double value) {
                      switch (value.toInt()) {
                        case 0:
                          return 'JAN';
                        case 1:
                          return 'FEB';
                        case 2:
                          return 'MAR';
                        case 3:
                          return 'APR';
                        case 4:
                          return 'MAY';
                        case 5:
                          return 'JUN';
                        case 6:
                          return 'JUL';
                        case 7:
                          return 'AUG';
                        case 8:
                          return 'SEP';
                        case 9:
                          return 'OCT';
                        case 10:
                          return 'NOV';
                        case 11:
                          return 'DEC';
                        default:
                          return '';
                      }
                    },
                  ),
                  leftTitles: SideTitles(
                      margin: 10.0,
                      showTitles: true,
                      // textStyle: chartLabelsTextStyle,
                      getTitles: (value) {
                        if (value == 0) {
                          return '0';
                        } else if (value % 3 == 0) {
                          return '${value ~/ 3 * 5}K';
                        }
                        return '';
                      }),
                ),
                gridData: FlGridData(
                  show: true,
                  checkToShowHorizontalLine: (value) => value % 3 == 0,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: Colors.black12,
                    strokeWidth: 1.0,
                    dashArray: [5],
                  ),
                ),
                borderData: FlBorderData(show: false),
                barGroups: covidCases
                    .asMap()
                    .map((key, value) => MapEntry(
                    key,
                    BarChartGroupData(
                      x: key,
                      barRods: [
                        BarChartRodData(
                          y: value,
                          // colorr:Colors.red

                        ),
                      ],
                    )))
                    .values
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
