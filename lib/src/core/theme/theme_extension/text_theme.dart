import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'color_pallete.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displaySmall: GoogleFonts.inknutAntiqua(
      fontSize: 32.sp,
      fontWeight: FontWeight.w700,
      color: AppColor.primaryTextColor,
    ),headlineLarge: GoogleFonts.inknutAntiqua(
      fontSize: 28.sp,
      fontWeight: FontWeight.w700,
      color: AppColor.primaryTextColor,
    ),
    headlineMedium: GoogleFonts.inknutAntiqua(
      fontSize: 26.sp,
      fontWeight: FontWeight.w700,
      color: AppColor.primaryTextColor,
    ),
    headlineSmall: GoogleFonts.inknutAntiqua(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.primaryTextColor,
    ),
    titleLarge: GoogleFonts.inknutAntiqua(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.primaryTextColor,
    ),
    titleMedium: GoogleFonts.inknutAntiqua(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      color: AppColor.primaryTextColor,
    ),
    titleSmall: GoogleFonts.inknutAntiqua(
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.primaryTextColor,
    ),
    bodyLarge: GoogleFonts.inknutAntiqua(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.primaryTextColor,
    ),
    bodyMedium: GoogleFonts.inknutAntiqua(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.primaryTextColor,
    ),
    bodySmall: GoogleFonts.inknutAntiqua(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.primaryTextColor,
    ),
    labelLarge: GoogleFonts.inknutAntiqua(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: AppColor.primaryTextColor,
    ),
    labelMedium: GoogleFonts.inknutAntiqua(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: AppColor.primaryTextColor,
    ),
    labelSmall: GoogleFonts.inknutAntiqua(
      fontSize: 11.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.primaryTextColor,
    ),
  );
}
