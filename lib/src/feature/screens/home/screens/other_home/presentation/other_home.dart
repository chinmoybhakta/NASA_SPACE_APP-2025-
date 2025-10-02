import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_vegetation/src/core/constant/icons.dart';
import 'package:nasa_vegetation/src/core/constant/images.dart';
import 'package:nasa_vegetation/src/core/constant/padding.dart';
import 'package:nasa_vegetation/src/core/theme/theme_extension/color_pallete.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nasa_vegetation/src/feature/screens/home/screens/other_home/presentation/widget/custom_graph.dart';
import '../../patient_home/data/riverpod/dropdown_controller.dart';

class OtherHome extends StatefulWidget {
  const OtherHome({super.key});

  @override
  State<OtherHome> createState() => _OtherHomeState();
}

class _OtherHomeState extends State<OtherHome> {
  late TextEditingController _search_controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _search_controller = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _search_controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: AppColor.secondaryColor,
        backgroundColor: AppColor.screenBackgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r)
        ),
        leading: IconButton(onPressed: () {
          context.pop();
        }, icon: Icon(Icons.arrow_back, color: AppColor.secondaryColor,),),
        title: Consumer(
            builder: (_, ref, _) {
              final state = ref.watch(dropDownState2);
              return DropdownButton(
                items: years,
                onChanged: (val){
                  if(val != null) ref.read(dropDownState2.notifier).state = val;
                },
                value: state,
              );
            }
        ),
      ),
      body: Padding(
        padding: AppPadding.horizontalPadding,
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            SizedBox(
              height: 268.h,
              child: Stack(
                children: [
                  Image.asset(AppImages.laiMap1),
                  Positioned(
                      right: 10.w,
                      top: 10.h,
                      child: SvgPicture.asset(AppIcons.filterIcons)
                  ),Positioned(
                      right: 10.w,
                      bottom: 10.h,
                      child: SvgPicture.asset(AppIcons.gpsIcon, colorFilter: ColorFilter.mode(AppColor.primaryColor, BlendMode.srcIn),)
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Text("Vegetation Graph", style: style.titleMedium,),
            SizedBox(height: 10.h,),
            CustomGraph()
          ],
        ),
      ),
    );
  }
}
