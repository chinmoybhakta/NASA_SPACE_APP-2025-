import 'package:flutter/material.dart';

class AppColor {
  static const Color screenBackgroundColor = Color(0xffFAFAFA);
  static const Color primaryColor = Color(0xFFFFFFFF);
  static const Color secondaryColor = Color(0xFF000000);
  static const Color primaryTextColor = Color(0xFF000000);
  static const Color btnBg = Color(0xff438046);
  static const Color textColor2 = Color(0xff1CD8D2);

  static const Color searchColor1 = Color(0xff1CD8D2);
  static const Color searchColor2 = Color(0xff93EDC7);

  static const Color circularProgressColor1 = Color(0xff438046);
  static const Color circularProgressColor2 = Color(0xffFBC02D);
  static const Color circularProgressColor3 = Color(0xffEA3131);

  static const Color defaultProgressColor = Color(0xffD9D9D9);

  static const Color linearProgressColor1 = Color(0xffFBC02D);
  static const Color linearProgressColor2 = Color(0xffEA3131);
  static const Color linearContainer = Color(0xFFffffff);
  static const Color linearShadow = Colors.grey;

  static const Color weatherContainer = Color(0xff49C6FC);


 // // container colors
 // static const Color containerBg1 = Color(0xff0887CE);
 // static const Color containerBg2 = Color(0xff00CBAB);
 // static const Color softSkyBlue = Color(0xffE7F3FB);
 //
 // //Home Screen
 //  static const Color blackText = Color(0xff070707);
 //  static const Color homeBg = Color(0xffFAFAFA);


  // ColorScheme for light theme
  static ColorScheme lightColorScheme = ColorScheme.light(
    primary: primaryColor,
    secondary: secondaryColor,
    surface: screenBackgroundColor,
    error: textColor2,
    onPrimary: primaryColor,
    onSecondary: secondaryColor,
    onSurface: screenBackgroundColor,
    onError: textColor2,
    brightness: Brightness.light,
  );
}
