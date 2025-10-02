import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_vegetation/src/core/constant/images.dart';
import 'package:nasa_vegetation/src/feature/screens/auth/selection/presentation/widget/green_button.dart';

import '../../../../../core/routes/route_constant.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.splashBg, fit: BoxFit.cover,),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Select your Role",
                  style: style.headlineSmall,
                ),
                SizedBox(height: 47.h,),
                GreenButton(text: "Allergic Patient",
                tap: ()=>context.push(RouteConst.patientHomeScreen),),
                SizedBox(height: 32.h,),
                GreenButton(text: "Farmer",
                tap: ()=>context.push(RouteConst.otherHomeScreen),
                ),
                SizedBox(height: 32.h,),
                GreenButton(text: "Agri Officer",
                  tap: ()=>context.push(RouteConst.otherHomeScreen),
                ),
                SizedBox(height: 32.h,),
                GreenButton(text: "Researcher",
                  tap: ()=>context.push(RouteConst.otherHomeScreen),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
