import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:frontend_part_2/style/colour.dart';

class ProgressChart extends StatefulWidget {
  final List<double> progressData;

  const ProgressChart({super.key, required this.progressData});

  @override
  ProgressChartState createState() => ProgressChartState();
}

class ProgressChartState extends State<ProgressChart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(
              show: true,
              drawVerticalLine: false,
              horizontalInterval: 10,
            ),
            titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40,
                    interval: 20,
                    getTitlesWidget: (value, meta) =>
                        Text(
                          value.toInt().toString(),
                          style: TextStyle(
                            color: AppColors.green_1,
                          ),
                        ),
                  ),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        const days = [
                          "Mon",
                          "Tue",
                          "Wed",
                          "Thu",
                          "Fri",
                          "Sat",
                          "Sun"
                        ];
                        if (value >= 0 && value < days.length) {
                          return Text(days[value.toInt()],
                              style: TextStyle(
                                color: AppColors.green_1,
                              )
                          );
                        }
                        return Text("");
                      },
                    )
                )
            ),
            borderData: FlBorderData(
              show: true,
            ),
            lineBarsData: [
              LineChartBarData(
                spots: List.generate(widget.progressData.length, (index) =>
                    FlSpot(index.toDouble(), widget.progressData[index]
                    ),
                ),
                isCurved: true,
                color: AppColors.green_1,
                barWidth: 3,
                dotData: FlDotData(
                  show: true,
                ),
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.green_2.withOpacity(0.4),
                      // Darker at the top
                      AppColors.green_3.withOpacity(0.1),
                      // Fades to transparent
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ],
            minX: 0,
            maxX: 6,
            minY: 0,
            maxY: 100,
          ),
        ),
      ),
    );
  }
}



