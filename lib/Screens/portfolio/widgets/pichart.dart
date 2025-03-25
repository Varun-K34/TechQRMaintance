import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TechnicianPieChart extends StatelessWidget {
  final int completedServices;
  final double avgTime;
  final double feedbackRating;

  const TechnicianPieChart({
    super.key,
    required this.completedServices,
    required this.avgTime,
    required this.feedbackRating,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SfCircularChart(
        title: ChartTitle(text: 'Performance Overview'),
        palette: [Colors.blue, Colors.green, Colors.orange],
        legend: Legend(
          isVisible: true,
          position: LegendPosition.bottom,
          orientation: LegendItemOrientation.horizontal,
          overflowMode: LegendItemOverflowMode.wrap,
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          iconHeight: 16,
          iconWidth: 16,
        ),
        series: <CircularSeries>[
          PieSeries<MapEntry<String, double>, String>(
            dataSource: [
              MapEntry('Services', completedServices.toDouble()),
              MapEntry('Avg. Time', avgTime),
              MapEntry('Rating', feedbackRating),
            ],
            xValueMapper: (entry, _) => entry.key,
            yValueMapper: (entry, _) => entry.value,
            dataLabelSettings: const DataLabelSettings(
              isVisible: true,
              labelPosition: ChartDataLabelPosition.inside,
              textStyle: TextStyle(fontSize: 16),
            ),
            explode: true,
          )
        ],
      ),
    );
  }
}
