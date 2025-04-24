import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class EarningsChart extends StatefulWidget {
  const EarningsChart({super.key});

  @override
  State<EarningsChart> createState() => _EarningsChartState();
}

class _EarningsChartState extends State<EarningsChart> {
  String selectedRange = 'Week';
  final List<String> options = ['Week', 'Month', 'Year'];
  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header with dropdown
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Earn Statistic',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              DropdownButton<String>(
                value: selectedRange,
                dropdownColor: Colors.black,
                style: const TextStyle(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedRange = newValue!;
                    // Update data source here based on range
                  });
                },
                items:
                    options.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),

        // Chart
        AspectRatio(
          aspectRatio: 1.8,
          child: BarChart(
            BarChartData(
              maxY: 4,
              barGroups: _buildGroups(),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    reservedSize: 28,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return SideTitleWidget(
                        meta: meta,
                        // axisSide: meta.axisSide,
                        child: Text(
                          value.toInt().toString(),
                          style: const TextStyle(
                            color: Color.fromARGB(255, 154, 154, 154),
                            fontSize: 12,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      const days = [
                        'Sun',
                        'Mon',
                        'Tue',
                        'Wed',
                        'Thr',
                        'Fri',
                        'Sat',
                      ];
                      return SideTitleWidget(
                        meta: meta,
                        // axisSide: meta.axisSide,
                        child: Text(
                          days[value.toInt()],
                          textHeightBehavior: TextHeightBehavior(
                            applyHeightToFirstAscent: false,
                          ),
                          style: const TextStyle(
                            color: Color.fromARGB(255, 154, 154, 154),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              gridData: FlGridData(show: false),
              borderData: FlBorderData(show: false),
              barTouchData: BarTouchData(enabled: false),
              groupsSpace: 25,
            ),
          ),
        ),
      ],
    );
  }

  List<BarChartGroupData> _buildGroups() {
    return List.generate(7, (i) {
      // Random values that add up to a max of 4
      double first = _random.nextDouble() * 2; // max 2
      double second = _random.nextDouble() * (4 - first); // remaining space

      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: _random.nextDouble() * 4,
            width: 40,
            rodStackItems: [
              BarChartRodStackItem(0, first, Colors.grey[800]!),
              BarChartRodStackItem(first, first + second, Color(0xFF9B30FF)),
              BarChartRodStackItem(first + second, 4, Colors.redAccent),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
        ],
        barsSpace: 0,
      );
    });
  }
}
