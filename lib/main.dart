import 'package:amar_sodai/core/router/app_routes.dart';
import 'package:amar_sodai/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AmarSodai());
}

class AmarSodai extends StatelessWidget {
  const AmarSodai({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: ThemeMode.system,
      routerConfig: AppRoutes.router,
    );
  }
}
