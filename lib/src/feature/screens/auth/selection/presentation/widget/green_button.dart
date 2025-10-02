import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_vegetation/src/core/theme/theme_extension/color_pallete.dart';

class GreenButton extends StatelessWidget {
  final String text;
  final void Function()? tap;
  const GreenButton({
    super.key,
    required this.text,
    this.tap
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: 57.h,
        width: 184.w,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.w,
            color: AppColor.secondaryColor
          ),
          color: AppColor.btnBg
        ),
        child: Center(
          child: Text(
            text,
            style: style.bodyLarge?.copyWith(color: AppColor.primaryColor),
          ),
        ),
      ),
    );
  }
}
