import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LearningPieChart extends StatelessWidget {
  // Store the progress for each language.
  final double chineseProgress;
  final double italianProgress;
 // Constructor to receive the progress values.
  const LearningPieChart({
    super.key,
    required this.chineseProgress,
    required this.italianProgress,
  });

  @override
  Widget build(BuildContext context) {
     // Build the UI for the pie chart.
    return SizedBox(
      width: context.getWidth()* 0.2,// Set the width of the chart.
      height: context.getWHeigth()* 0.26,// Set the height of the chart.
      child: PieChart(
        PieChartData(
          sectionsSpace: 5, // Set the space between pie sections.
          centerSpaceRadius: 50, // Set the radius of the center space.
          sections: [
            // Define the sections of the pie chart.
            PieChartSectionData(
              value: chineseProgress,// Set the value for this section (Chinese progress).
              color: Colors.red.shade300,// Set the color of this section.
              title: '${"${(chineseProgress * 100).toStringAsFixed(0)}"}%',// Set the title (percentage) of this section.
              radius: 70,// Set the title (percentage) of this section.
              titleStyle: const TextStyle(
                // Style the title text.
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 13, 1, 1),
              ),
            ),
            PieChartSectionData(
              value: italianProgress,
              color: const Color.fromARGB(180, 105, 88, 161),
              title: '${"  ${(italianProgress * 100).toStringAsFixed(0)} "}%',
              radius: 70,
              titleStyle: const TextStyle(
                fontSize: 16,

                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 13, 1, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
