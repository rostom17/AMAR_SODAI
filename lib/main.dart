import 'package:amar_sodai/core/providers/app_bloc_providers.dart';
import 'package:amar_sodai/core/router/app_routes.dart';
import 'package:amar_sodai/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(AmarSodai());
}

class AmarSodai extends StatelessWidget {
  const AmarSodai({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 914),
      builder: (_, child) {
        return MultiBlocProvider(
          providers: AppBlocProviders.blocProviders,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme(),
            darkTheme: AppTheme.darkTheme(),
            themeMode: ThemeMode.system,
            routerConfig: AppRoutes.router,
          ),
        );
      },
    );
  }
}
