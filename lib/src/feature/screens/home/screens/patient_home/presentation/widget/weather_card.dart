import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasa_vegetation/src/core/constant/icons.dart';
import 'package:nasa_vegetation/src/core/constant/images.dart';
import 'package:nasa_vegetation/src/core/theme/theme_extension/color_pallete.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      width: 170.w,
      decoration: BoxDecoration(
        color:AppColor.weatherContainer,
        borderRadius: BorderRadius.circular(12.r)
      ),
      child: Column(
        children: [
          Image.asset(AppImages.weather),
          Text("21°C", style: style.bodyLarge?.copyWith(color: AppColor.primaryColor, fontFamily: "inter"),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(AppIcons.windIcon, width: 50.w,),
              RichText(text: TextSpan(children: [
                TextSpan(
                  text: "18.12\n",
                  style: style.headlineSmall?.copyWith(color: AppColor.primaryColor, fontFamily: "inter")
                ),
                TextSpan(
                  text: "Wind Speed",
                  style: style.bodyLarge?.copyWith(color: AppColor.primaryColor, fontFamily: "inter")
                )
              ]))
            ],
          )
        ],
      ),
    );
  }
}
