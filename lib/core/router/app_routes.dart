import 'package:amar_sodai/features/dashboard/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String splashScreen = "SplashScreen";

  static GoRouter router = GoRouter(
    initialLocation: "/",
    routes: <RouteBase>[GoRoute(path: "/", name: splashScreen, builder: (context, state) =>  SplashScreen(),)],
  );
}
