
import 'package:go_router/go_router.dart';
import 'package:nasa_vegetation/src/core/routes/route_constant.dart';
import '../../feature/screens/home_screen/presentation/home_screen.dart';
import 'build_page_with_transition.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteConst.homeScreen,

    /// Start at the splash screen
    routes: [
      // StatefulShellRoute.indexedStack(
      //   builder: (context, state, navigationShell) =>
      //       BottomNavBar(navigationShell: navigationShell),
      //   branches: [
      //     StatefulShellBranch(
      //       routes: [
      //         GoRoute(
      //           path: RouteConst.homeScreen,
      //           builder: (context, state) => const HomeScreenViewer(),
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       routes: [
      //         GoRoute(
      //           path: RouteConst.jobScreen,
      //           builder: (context, state) => const JobScreen(),
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       routes: [
      //         GoRoute(
      //           path: RouteConst.mapScreen,
      //           builder: (context, state) => const MapScreen(),
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       routes: [
      //         GoRoute(
      //           path: RouteConst.settingScreen,
      //           builder: (context, state) => const ProfileSettingScreen(),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),


      GoRoute(
        path: RouteConst.homeScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: HomeScreen(),
          );
        },
      ),

  //     GoRoute(
  //       path: RouteConst.passwordResetScreen,
  //       pageBuilder: (context, state) {
  //         final otpParameterModel = state.extra as OtpParameterModel;
  //         return buildPageWithTransition(
  //           context: context,
  //           state: state,
  //           transitionType: PageTransitionType.slideRightToLeft,
  //           child: PasswordResetScreen(otpParameterModel: otpParameterModel),
  //         );
  //       },
  //     ),

    ],
  );
}
