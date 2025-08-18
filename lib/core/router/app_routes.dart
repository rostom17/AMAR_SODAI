import 'package:amar_sodai/features/dashboard/presentation/screens/splash_screen.dart';
import 'package:amar_sodai/features/dashboard/presentation/widgets/bottom_nav_widget.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String splashScreen = "SplashScreen";
  static const String bottomNavScreen = "BottomNavScreen";

  static GoRouter router = GoRouter(
    initialLocation: "/",
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        name: splashScreen,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: "/bottomNavScreen",
        name: bottomNavScreen,
        builder: (context, state) => BottomNavWidget(),
      ),
    ],
  );
}
