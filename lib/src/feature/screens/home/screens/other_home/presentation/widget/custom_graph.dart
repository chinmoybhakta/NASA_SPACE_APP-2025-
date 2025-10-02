import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_vegetation/src/core/theme/theme_extension/color_pallete.dart';

class CustomGraph extends StatefulWidget {
  const CustomGraph({super.key});

  @override
  State<CustomGraph> createState() => _CustomGraphState();
}

class _CustomGraphState extends State<CustomGraph> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.30,
          child: Padding(
            padding: EdgeInsets.only(
              right: 18.w,
              left: 12.w,
              top: 24.h,
              bottom: 12.h,
            ),
            child: LineChart(
              data1(),
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: 1.30,
          child: Padding(
            padding: EdgeInsets.only(
              right: 18.w,
              left: 12.w,
              top: 24.h,
              bottom: 12.h,
            ),
            child: LineChart(
              data2(),
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: 1.30,
          child: Padding(
            padding: EdgeInsets.only(
              right: 18.w,
              left: 12.w,
              top: 24.h,
              bottom: 12.h,
            ),
            child: LineChart(
              data3(),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style = Theme.of(context).textTheme.titleMedium?.copyWith(fontFamily: "inter");
    //CHANGE
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text('0', style: style);
        break;
      case 2:
        text = Text('2025', style: style);
        break;
      case 4:
        text = Text('2027', style: style);
        break;
      case 6:
        text = Text('2029', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      meta: meta,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    final style = Theme.of(context).textTheme.titleMedium?.copyWith(fontFamily: "inter");
    //CHANGE
    String text;
    switch (value.toInt()) {
      case 1:
        text = 'july';
        break;
      case 2:
        text = 'Aug';
        break;
      case 3:
        text = 'Sept';
        break;
      case 4:
        text = 'oct';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData data1() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: true),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        drawHorizontalLine: false,
        horizontalInterval: 1,
        verticalInterval: 2,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 4,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 1),
            FlSpot(1, 1),
            FlSpot(2, 2.5),
            FlSpot(3, 1.55),
            FlSpot(4, 2),
            FlSpot(5, 1.5),
            FlSpot(6, 0),
          ],
          isCurved: true,
          color: AppColor.circularProgressColor1,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [AppColor.circularProgressColor1, AppColor.primaryColor]
                  .map((color) => color.withValues(alpha: 0.1))
                  .toList(),
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }

  LineChartData data2() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: true),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        drawHorizontalLine: false,
        horizontalInterval: 1,
        verticalInterval: 2,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 4,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 2),
            FlSpot(1, 1),
            FlSpot(2, 3),
            FlSpot(3, 2),
            FlSpot(4, 2.5),
            FlSpot(5, 2),
            FlSpot(6, 3),
          ],
          isCurved: true,
          color: AppColor.circularProgressColor2,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [AppColor.circularProgressColor2, AppColor.primaryColor]
                  .map((color) => color.withValues(alpha: 0.1))
                  .toList(),
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }LineChartData data3() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: true),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        drawHorizontalLine: false,
        horizontalInterval: 1,
        verticalInterval: 2,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 4,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(1, 0.25),
            FlSpot(2, 1.5),
            FlSpot(3, 2),
            FlSpot(4, 2.5),
            FlSpot(5, 3),
            FlSpot(6, 4),
          ],
          isCurved: true,
          color: AppColor.circularProgressColor3,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [AppColor.circularProgressColor3, AppColor.primaryColor]
                  .map((color) => color.withValues(alpha: 0.1))
                  .toList(),
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }
}