import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/padding.dart';
import '../../../../core/theme/theme_extension/color_pallete.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColor.homeBg,
      body: SafeArea(
        child: Padding(
          padding: AppPadding.horizontalPadding,
          child: Column(
            children: [

            ],
          ),
        ),
      )
    );
  }
}
