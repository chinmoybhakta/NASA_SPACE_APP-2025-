import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_vegetation/src/core/theme/theme_extension/color_pallete.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearProgressBar extends StatelessWidget {
  final String day;
  final double percentage;
  const LinearProgressBar({
    super.key,
    required this.day,
    required this.percentage
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      width: 320.w,
      decoration: BoxDecoration(
        color: AppColor.linearContainer,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: AppColor.linearShadow.withValues(alpha: 0.3),
            blurRadius: 6.r,
            spreadRadius: 2.r
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(day, style: style.bodySmall?.copyWith(fontFamily: "inter")),
              Text((percentage*10).toStringAsFixed(1), style: style.bodyLarge?.copyWith(fontFamily: "inter"))
            ],
          ),
          LinearPercentIndicator(
            animation: true,
            animationDuration: 500,
            barRadius: Radius.circular(20.r),
            lineHeight: 15.h,
            percent: percentage,
            linearGradient: LinearGradient(colors: [
              AppColor.linearProgressColor1,
              AppColor.linearProgressColor2
            ]),
          ),
        ],
      ),
    );
  }
}
