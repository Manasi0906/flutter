import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class RatingChart extends StatelessWidget {
  final List<int> ratings = [5, 12, 18, 15, 20]; 

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: 25,
        barTouchData: BarTouchData(enabled: false),
        titlesData: FlTitlesData(
          leftTitles:const  AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 28,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (double value, _) {
                switch (value.toInt()) {
                  case 0:
                    return const Text('1 Star');
                  case 1:
                    return const Text('2 Stars');
                  case 2:
                    return const Text('3 Stars');
                  case 3:
                    return const Text('4 Stars');
                  case 4:
                    return const Text('5 Stars');
                  default:
                    return const Text('');
                }
              },
            ),
          ),
        ),
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(show: false),
        barGroups: ratings.asMap().entries.map((entry) {
          int index = entry.key;
          int value = entry.value;
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: value.toDouble(),
                color: Colors.primaries[index % Colors.primaries.length],
                width: 20,
                borderRadius: BorderRadius.circular(4),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
