import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_vegetation/src/core/theme/theme_extension/color_pallete.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularProgressBar extends StatelessWidget {
  final double percentage;
  const CircularProgressBar({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return SizedBox(
      width: 170.w,
      child: Transform.flip(
        flipX: true,
        child: CircularPercentIndicator(
          animation: true,
          animationDuration: 500,
          startAngle: 0.0,
          radius: 100.r,
          lineWidth: 15.w,
          percent: percentage, // 77%
          center: Transform.flip(
            flipX: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (percentage * 10).toStringAsFixed(1), style: style.displaySmall?.copyWith(color: AppColor.primaryTextColor, fontFamily: "inter"),
                ),
                Text(
                  (percentage > 0.7 && percentage <= 1) ? "High" :
                  (percentage > 0.5 && percentage <= 0.7) ? "Moderate" :
                  "Low", style: style.bodyLarge?.copyWith(fontFamily: "inter"),
                ),
              ],
            ),
          ),
          circularStrokeCap: CircularStrokeCap.round, // rounded edges
          backgroundColor: AppColor.defaultProgressColor,
          // linearGradient: LinearGradient(colors: [
          //   AppColor.circularProgressColor3,
          //   AppColor.circularProgressColor2,
          //   AppColor.circularProgressColor1,
          // ]),
          progressColor: (percentage > 0.7 && percentage <= 1) ? AppColor.circularProgressColor3 :
          (percentage > 0.5 && percentage <= 0.7) ? AppColor.circularProgressColor2 :
          AppColor.circularProgressColor1,
        ),
      ),
    );
  }
}
