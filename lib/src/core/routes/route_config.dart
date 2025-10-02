
import 'package:go_router/go_router.dart';
import 'package:nasa_vegetation/src/core/routes/route_constant.dart';
import 'package:nasa_vegetation/src/feature/screens/auth/selection/presentation/selection_screen.dart';
import 'package:nasa_vegetation/src/feature/screens/home/screens/other_home/presentation/other_home.dart';
import 'package:nasa_vegetation/src/feature/screens/home/screens/patient_home/presentation/patient_home.dart';
import 'build_page_with_transition.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteConst.selectionScreen,

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
        path: RouteConst.selectionScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: SelectionScreen(),
          );
        },
      ),

      GoRoute(
        path: RouteConst.patientHomeScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: PatientHome(),
          );
        },
      ),

      GoRoute(
        path: RouteConst.otherHomeScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: OtherHome(),
          );
        },
      ),

    ],
  );
}
