import 'package:amar_sodai/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.backgroundColor,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w900),
      ),

      searchBarTheme: SearchBarThemeData(
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16)),
        elevation: WidgetStateProperty.all(0),
      ),

      textTheme: TextTheme(
        titleLarge: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 14, color: Colors.black),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          visualDensity: VisualDensity(vertical: 0),
          padding: EdgeInsets.zero,
          foregroundColor: AppColors.backgroundColor2,
          textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark();
  }
}
