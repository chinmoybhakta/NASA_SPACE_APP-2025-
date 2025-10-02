import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_vegetation/src/core/constant/icons.dart';
import 'package:nasa_vegetation/src/core/constant/images.dart';
import 'package:nasa_vegetation/src/core/constant/padding.dart';
import 'package:nasa_vegetation/src/core/theme/theme_extension/color_pallete.dart';
import 'package:nasa_vegetation/src/feature/screens/home/screens/patient_home/data/riverpod/dropdown_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nasa_vegetation/src/feature/screens/home/screens/patient_home/presentation/widget/circular_progress_bar.dart';
import 'package:nasa_vegetation/src/feature/screens/home/screens/patient_home/presentation/widget/linear_progress_bar.dart';
import 'package:nasa_vegetation/src/feature/screens/home/screens/patient_home/presentation/widget/weather_card.dart';

class PatientHome extends StatelessWidget {
  const PatientHome({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    final linearBarList = List.generate(5, (index)=>Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: LinearProgressBar(day: "21 Aug", percentage: 0.61,),
    ),);
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
            final state = ref.watch(dropDownState);
            return DropdownButton(
                items: items,
                onChanged: (val){
                  if(val != null) ref.read(dropDownState.notifier).state = val;
                },
                value: state,
            );
          }
        ),
      ),
      body: Padding(
        padding: AppPadding.horizontalPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              SizedBox(
                height: 268.h,
                  child: Stack(
                    children: [
                      Image.asset(AppImages.allergyMap),
                      Positioned(
                        right: 10.w,
                          top: 10.h,
                          child: SvgPicture.asset(AppIcons.filterIcons)
                      )
                    ],
                  ),
              ),
              SizedBox(height: 10.h,),
              Text("Allergic Area's", style: style.titleMedium,),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularProgressBar(percentage: 0.77),
                  WeatherCard()
                ],
              ),
              SizedBox(height: 32.h,),
              Text("The next few days...."),
              SizedBox(height: 32.h,),
              Column(
                children: linearBarList,
              ),
              SizedBox(height: 50.h,)
            ],
          ),
        ),
      ),
    );
  }
}
